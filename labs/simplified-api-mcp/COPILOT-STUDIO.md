# Configuring the Weather MCP Tool in Copilot Studio

This guide walks you through connecting the Weather MCP server deployed by this lab to [Microsoft Copilot Studio](https://copilotstudio.microsoft.com/).

> **Prerequisite:** Complete the [simplified API to MCP lab](simplified-api-mcp.ipynb) first so that the Weather MCP server is deployed on your API Management instance.

## Weather MCP (No Authorization)

### Step 1 - Create a blank agent

1. Open [Copilot Studio](https://copilotstudio.microsoft.com/).
2. Create a new **blank agent**.

### Step 2 - Add the Weather MCP tool

1. Click the **Tools** tab, then click **Add a tool**.
2. Select **Model Context Protocol**.
3. Fill in the following fields:
   - **Server name:** Weather MCP
   - **Server description:** Weather MCP server tool
   - **Server URL:** `https://<APIM_NAME>.azure-api.net/weather-mcp/mcp`
4. For **Authentication**, select **None**.
5. Click **Create**.

### Step 3 - Create the connection

1. Click **Create new connection**.
2. Click **Create**.

### Step 4 - Add and configure

1. Click **Add and configure**.

### Step 5 - Test the Weather MCP

1. In the agent chat, enter:

   > What's the weather in Lisbon?

2. Verify that the `get-weather` tool was invoked successfully and a weather response is returned.

## Additional Resources

- [Model Context Protocol](https://modelcontextprotocol.io/)
- [Azure API Management](https://learn.microsoft.com/azure/api-management/)
- [Introducing Model Context Protocol (MCP) in Copilot Studio](https://www.microsoft.com/en-us/microsoft-copilot/blog/copilot-studio/introducing-model-context-protocol-mcp-in-copilot-studio-simplified-integration-with-ai-apps-and-agents/)
