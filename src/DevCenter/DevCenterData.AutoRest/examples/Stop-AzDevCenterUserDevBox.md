### Example 1: Stop a dev box by endpoint
```powershell
Stop-AzDevCenterUserDevBox -Endpoint "https://8a40af38-3b4c-4672-a6a4-5e964b1870ed-contosodevcenter.centralus.devcenter.azure.com/" -ProjectName DevProject -UserId 786a823c-8037-48ab-89b8-8599901e67d0 -Name myDevBox
```
This command stops the dev box "myDevBox" assigned to user "786a823c-8037-48ab-89b8-8599901e67d0".

### Example 2: Stop a dev box by dev center
```powershell
Stop-AzDevCenterUserDevBox -DevCenter Contoso -ProjectName DevProject -UserId "me" -Name myDevBox
```
This command stops the dev box "myDevBox" assigned to the currently signed-in user.

### Example 3: Stop a dev box by endpoint and InputObject
```powershell
$devBoxInput = @{"DevBoxName" = "myDevBox"; "UserId" = "me"; "ProjectName" = "DevProject" }
Stop-AzDevCenterUserDevBox -Endpoint "https://8a40af38-3b4c-4672-a6a4-5e964b1870ed-contosodevcenter.centralus.devcenter.azure.com/" -InputObject $devBoxInput
```
This command stops the dev box "myDevBox" assigned to the currently signed-in user.

### Example 4: Stop a dev box by dev center and InputObject
```powershell
$devBoxInput = @{"DevBoxName" = "myDevBox"; "UserId" = "786a823c-8037-48ab-89b8-8599901e67d0"; "ProjectName" = "DevProject" }
Stop-AzDevCenterUserDevBox -DevCenter Contoso -InputObject $devBoxInput 
```
This command stops the dev box "myDevBox" assigned to user "786a823c-8037-48ab-89b8-8599901e67d0".

