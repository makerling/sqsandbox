param location string
param virtualNetworkName string
param user string
param team string
param project string
param ipaddress string

module stgModule './sqsandbox_vnet.bicep' = {
  name: 'vnetdeploy'
  params: {
    location: location
    virtualNetworkName: virtualNetworkName
    user: user
    team: team
    project: project
    ipaddress: ipaddress
  }
}

