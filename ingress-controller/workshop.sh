# src: https://aksworkshop.io/

# Enable the HTTP routing add-on on your cluster
# This could be enabled in the Azure Portal, also.
az aks enable-addons --resource-group akschallenge --name aksdemo-rg --addons http_application_routing

# Retrieve your cluster specific DNS zone name by running the command below
az aks show --resource-group aksdemo-rg --name devops --query addonProfiles.httpApplicationRouting.config.HTTPApplicationRoutingZoneName -o table
