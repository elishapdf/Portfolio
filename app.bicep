param location string = resourceGroup().location
param staticWebAppName string
param sku string = 'Free' // Use 'Standard' for production

resource staticWebApp 'Microsoft.Web/staticSites@2022-03-01' = {
  name: staticWebAppName
  location: location
  sku: {
    name: sku
    tier: sku
  }
  properties: {
    repositoryUrl: ''  // not needed if deploying via Azure DevOps
    branch: ''
    buildProperties: {
      appLocation: '/'
      apiLocation: ''
      outputLocation: ''
    }
  }
}
