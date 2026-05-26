---
name: Simplified API to MCP
architectureDiagram: images/model-context-protocol.gif
categories:
  - Knowledge & Tools
services:
  - MCP
shortDescription: Expose a single mocked Weather REST API as an MCP server with Azure API Management.
detailedDescription: Focused lab that shows the minimum setup to expose one mocked Weather REST API through the Model Context Protocol with Azure API Management and API Center.
tags: []
authors:
  - vieiraae
---

# APIM ❤️ AI Agents

## [Simplified API to MCP lab](simplified-api-mcp.ipynb)

[![flow](../../images/model-context-protocol.gif)](simplified-api-mcp.ipynb)

This lab focuses on a single Weather example. It deploys:

- a mocked Weather REST API in API Management
- a Weather MCP server that exposes the `get-weather` operation as an MCP tool
- API Center entries for both the REST API and the MCP server

The Weather example is intentionally simple and does not require authentication.

Follow this [guide](./COPILOT-STUDIO.md) to use the Weather MCP server in Copilot Studio.

### Prerequisites

- [Python 3.12 or later version](https://www.python.org/) installed
- [VS Code](https://code.visualstudio.com/) installed with the [Jupyter notebook extension](https://marketplace.visualstudio.com/items?itemName=ms-toolsai.jupyter) enabled
- [Python environment](https://code.visualstudio.com/docs/python/environments#_creating-environments) with the [requirements.txt](../../requirements.txt) or run `pip install -r requirements.txt` in your terminal
- [An Azure Subscription](https://azure.microsoft.com/free/) with [Contributor](https://learn.microsoft.com/en-us/azure/role-based-access-control/built-in-roles/privileged#contributor) + [RBAC Administrator](https://learn.microsoft.com/en-us/azure/role-based-access-control/built-in-roles/privileged#role-based-access-control-administrator) or [Owner](https://learn.microsoft.com/en-us/azure/role-based-access-control/built-in-roles/privileged#owner) roles
- [Azure CLI](https://learn.microsoft.com/cli/azure/install-azure-cli) installed and [Signed into your Azure subscription](https://learn.microsoft.com/cli/azure/authenticate-azure-cli-interactively)

### 🚀 Get started

Proceed by opening the [Jupyter notebook](simplified-api-mcp.ipynb), and follow the steps provided.

### 🗑️ Clean up resources

When you're finished with the lab, you should remove all your deployed resources from Azure to avoid extra charges and keep your Azure subscription uncluttered.
Use the [clean-up-resources notebook](clean-up-resources.ipynb) for that.
