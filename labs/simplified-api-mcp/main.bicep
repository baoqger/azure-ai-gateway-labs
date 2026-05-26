// ------------------
//    PARAMETERS
// ------------------

param apimSku string
param apimSubscriptionsConfig array = []
param apicLocation string = resourceGroup().location
param apicServiceNamePrefix string = 'apic'

// ------------------
//    VARIABLES
// ------------------

var resourceSuffix = uniqueString(subscription().id, resourceGroup().id)

// ------------------
//    RESOURCES
// ------------------

// 1. Log Analytics Workspace
module lawModule '../../modules/operational-insights/v1/workspaces.bicep' = {
  name: 'lawModule'
}

// 2. Application Insights
module appInsightsModule '../../modules/monitor/v1/appinsights.bicep' = {
  name: 'appInsightsModule'
  params: {
    lawId: lawModule.outputs.id
    customMetricsOptedInType: 'WithDimensions'
  }
}

// 3. API Management
module apimModule '../../modules/apim/v2/apim.bicep' = {
  name: 'apimModule'
  params: {
    apimSku: apimSku
    apimSubscriptionsConfig: apimSubscriptionsConfig
    lawId: lawModule.outputs.id
    appInsightsId: appInsightsModule.outputs.id
    appInsightsInstrumentationKey: appInsightsModule.outputs.instrumentationKey
  }
}

// 4. API Center
module apicModule '../../modules/apic/v1/apic.bicep' = {
  name: 'apicModule'
  params: {
    apicServiceName: '${apicServiceNamePrefix}-${resourceSuffix}'
    location: apicLocation
  }
}

// 5. Weather REST API
module weatherAPIModule 'src/weather/api/api.bicep' = {
  name: 'weatherAPIModule'
  params: {
    apimServiceName: apimModule.outputs.name
    apicServiceName: apicModule.outputs.name
    environmentName: apicModule.outputs.apiEnvironmentName
  }
}

// 6. Weather MCP server
module weatherMCPModule 'src/weather/mcp-server/mcp.bicep' = {
  name: 'weatherMCPModule'
  params: {
    apimServiceName: apimModule.outputs.name
    apicServiceName: apicModule.outputs.name
    environmentName: apicModule.outputs.mcpEnvironmentName
    apiName: weatherAPIModule.outputs.name
  }
}

// ------------------
//    OUTPUTS
// ------------------

output logAnalyticsWorkspaceId string = lawModule.outputs.customerId
output apimServiceId string = apimModule.outputs.id
output apimResourceGatewayURL string = apimModule.outputs.gatewayUrl
output apimSubscriptions array = apimModule.outputs.apimSubscriptions
output weatherApiEndpoint string = weatherAPIModule.outputs.endpoint
output weatherMcpEndpoint string = weatherMCPModule.outputs.endpoint
