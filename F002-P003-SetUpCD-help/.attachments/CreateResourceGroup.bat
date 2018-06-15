REM create resource group
call az group create --name "xjg-rg-sampleapp-team35" --location "West Europe"

REM create appservice plan
call az appservice plan create -g "xjg-rg-sampleapp-team35" -n "xjg-app-sampleapp-team35" --sku F1

REM create azurewebapp 
call az webapp create -g "xjg-rg-sampleapp-team35" -p "xjg-app-sampleapp-team35" -n "xjg-webapp-sampleapp-team35"
