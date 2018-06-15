REM create resource group
call az group create --name "RG-Playground-team35" --location "West Europe"

REM assign security group
call az role assignment create --role Contributor --assignee-object-id "1447a1d7-7785-4e0a-a5b4-e48f3a29151c" --resource-group "RG-Playground-team35" 