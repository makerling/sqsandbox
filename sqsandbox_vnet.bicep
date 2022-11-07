param location string
param virtualNetworkName string
param user string
param team string
param project string
param ipaddress string

resource virtualNetwork 'Microsoft.Network/VirtualNetworks@2022-05-01' = {
  name: virtualNetworkName
  location: location
  tags: {
    Owner: user
    Team: team
    sqsandbox: project
  }
  properties: {
    addressSpace: {
      addressPrefixes: [
        '${ipaddress}/16'
      ]
    }
    subnets: [
      {
        name: '${project}-subnet'
        properties: {
          addressPrefix: '${ipaddress}/24'
        }
      }
    ]
  }
  dependsOn: []
}
