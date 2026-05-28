---
name: "Simplified ML Models to MCP"
categories: ["AI Agents & MCP", "Model Integration"]
services: ["Azure API Management", "Azure Machine Learning", "Azure Monitor"]
shortDescription: "Expose an Azure ML online endpoint as an MCP server via Azure API Management."
detailedDescription: "Focused lab that keeps only the Azure ML deployment, the APIM REST façade, and the MCP server needed to expose one forecasting model as an MCP tool."
authors: ["jonesethan"]
---

# APIM ❤️ AI Agents

## [Simplified ML Models to MCP lab](simplified-ml-models.ipynb)

This lab focuses on the minimum flow required to expose an Azure ML online endpoint as an MCP server with Azure API Management.

It deploys:

- an Azure ML workspace and managed online endpoint for a pre-trained forecasting model
- an APIM REST API that forwards prediction requests to the Azure ML endpoint using managed identity
- an MCP server that exposes the `predict-forecast` operation as an MCP tool

If you want the full end-to-end version with AI Foundry, the APIM Inference API, and agent demos, use the sibling [Azure ML Model as MCP Server](../azure-ml-models/README.md) lab.

### Prerequisites

- [Python 3.12 or later version](https://www.python.org/) installed
- [VS Code](https://code.visualstudio.com/) installed with the [Jupyter notebook extension](https://marketplace.visualstudio.com/items?itemName=ms-toolsai.jupyter) enabled
- [Python environment](https://code.visualstudio.com/docs/python/environments#_creating-environments) with the [requirements.txt](../../requirements.txt) or run `pip install -r requirements.txt` in your terminal
- [An Azure Subscription](https://azure.microsoft.com/free/) with [Contributor](https://learn.microsoft.com/en-us/azure/role-based-access-control/built-in-roles/privileged#contributor) + [RBAC Administrator](https://learn.microsoft.com/en-us/azure/role-based-access-control/built-in-roles/privileged#role-based-access-control-administrator) or [Owner](https://learn.microsoft.com/en-us/azure/role-based-access-control/built-in-roles/privileged#owner) roles
- [Azure CLI](https://learn.microsoft.com/cli/azure/install-azure-cli) installed and [Signed into your Azure subscription](https://learn.microsoft.com/cli/azure/authenticate-azure-cli-interactively)

### 🚀 Get started

Proceed by opening the [Jupyter notebook](simplified-ml-models.ipynb), and follow the steps provided.

### 🗑️ Clean up resources

When you're finished with the lab, you should remove all your deployed resources from Azure to avoid extra charges and keep your Azure subscription uncluttered.
Use the [clean-up-resources notebook](clean-up-resources.ipynb) for that.
