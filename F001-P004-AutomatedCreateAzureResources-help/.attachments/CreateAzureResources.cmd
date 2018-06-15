SET Environment_name=%1

REM create appservice plan
call az appservice plan create -g "RG-Playground-team35" -n "AppServicePlan-team35-%Environment_name%" --sku F1

REM create azurewebapp 
call az webapp create -g "RG-Playground-team35" -p "AppServicePlan-team35-%Environment_name%" -n "WebApp-team35-%Environment_name%"

REM create SQL server
call az sql server create --admin-password "Welcome@123" --admin-user "gourav8jain" --location "West Europe" --name "sqlserver-team35-%Environment_name%" --resource-group "RG-Playground-team35"

REM set firewall rule to allow azure resources access the database
call az sql server firewall-rule create --name "azureservices" --start-ip-address 0.0.0.0 --end-ip-address 0.0.0.0 --server "sqlserver-team35-%Environment_name%" --resource-group "RG-Playground-team35" 

REM create SQL database
call az sql db create --name  "db-team35-%Environment_name%" --resource-group "RG-Playground-team35" --server "sqlserver-team35-%Environment_name%"
