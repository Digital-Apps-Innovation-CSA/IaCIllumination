# Infrastructure as code (IaC)
#
# BICEP
#

### Configuración Copilot
1. Abrir Visual Studio Code
2.  Click en Sigin in to GitHub

![image](https://github.com/Digital-Apps-Innovation-CSA/IacIluminationPath/assets/62779771/d53a47bf-a6ad-4012-8d6d-12a8d6e9f12d)

3. Escribir las credenciales del laboratorio
4. Pedira correo de verificación acceder al correo de outlook con las credenciales de github

#
### Configuración Ambiente
##
##
1. Loguearse al portal de Azure con las credenciales del laboratorio

![image](https://github.com/Digital-Apps-Innovation-CSA/IacIluminationPath/assets/62779771/c5e43bb9-4766-4537-bc5d-5ec92acd88af)

2. Crear una cuenta de devops con la cuenta del laboratorio
   Click on start Free

![image](https://github.com/Digital-Apps-Innovation-CSA/IacIluminationPath/assets/62779771/eab56b8d-91b9-41a3-9f7b-962b073a6c01)

![image](https://github.com/Digital-Apps-Innovation-CSA/IacIluminationPath/assets/62779771/60aac528-5da1-4181-8307-9c7a42e861ad)

![image](https://github.com/Digital-Apps-Innovation-CSA/IacIluminationPath/assets/62779771/350bee11-5a79-414c-8541-6d479d9b2a1a)

3. Crear un nuevo proyecto

![image](https://github.com/Digital-Apps-Innovation-CSA/IacIluminationPath/assets/62779771/17507a25-32c7-41f3-a89a-0b962bd4fb06)

4. Configurar Parallel Jobs para ejecutar pipelines
   a. Ir a Organization Settings

   ![image](https://github.com/Digital-Apps-Innovation-CSA/IacIluminationPath/assets/62779771/99e140da-3d80-4941-94f4-a04ee2835999)

   b. Billing --> Set Up Billing

   ![image](https://github.com/Digital-Apps-Innovation-CSA/IacIluminationPath/assets/62779771/a576f652-0630-4d75-b18e-53bfaee5ffb9)

   c. Agregar Paid Parallel Job
      Agregar 1 y click en guardar

   ![image](https://github.com/Digital-Apps-Innovation-CSA/IacIluminationPath/assets/62779771/e94016e6-9c7d-4e33-a0fa-fe727f45f8b5)

5. Importar Repositorio

   https://dev.azure.com/DemosAppInnovation/IluminationIaC
   ![image](https://github.com/Digital-Apps-Innovation-CSA/IacIluminationPath/assets/62779771/6335694c-3e97-46d3-8a3d-ce51f3ef3e21)

6. Clonar el repositorio de tu nueva cuenta de devops

   ![image](https://github.com/Digital-Apps-Innovation-CSA/IacIluminationPath/assets/62779771/76e0b4a6-b0a2-4b5a-9f0a-9875380423bf)


### Tarea 1 
Create service conection in Azure Devops use your Service Principal [Hint](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/service-endpoints?view=azure-devops&tabs=yaml "Hint" )
Guardar los datos del service principal
   ```
    az login --use-device-code
    az ad sp create-for-rbac --name "GitHubDevops" --role contributor --scopes /subscriptions/{yoursubscription} --json-auth
   ```

![image](https://github.com/Digital-Apps-Innovation-CSA/IacIluminationPath/assets/62779771/1e14efee-a2f9-4c9d-b269-1157676626a9)

![image](https://github.com/Digital-Apps-Innovation-CSA/IacIluminationPath/assets/62779771/ca713329-0af3-4a02-9b83-d8c63633e13c)

![image](https://github.com/Digital-Apps-Innovation-CSA/IacIluminationPath/assets/62779771/ff162f50-291e-4642-8689-d8e517cb5023)

Agregar los datos del service pricipal que se creo
![image](https://github.com/Digital-Apps-Innovation-CSA/IacIluminationPath/assets/62779771/e85a3195-f89f-424d-8d6d-52523446e49a)


### Tarea 2 
Configura las variales yaml file "infrastructure-rg.vars.dev.yaml" or "infrastructure-rg.vars.qa.yaml" con el nombre de la conexion y el subscription Id

### Tarea 3 
Configura los parametros "infrastructure-rg.params.dev" or "infrastructure-rg.params.dev" con el nombre y la ubicacion que deses para tus recursos.

### Tarea 4 
Configura el ambiente local
1. Run a Script Set-Workspace.ps1
   Example
   ```
   ./Set-Workspace  "C:\RVR\git\BicepResult\" 
   ```
2. Valida que se ejecuta satispactoriamente de forma local
   Ejemplo
   ```
    az login --use-device-code
    az bicep build --file infra\infrastructure-rg.bicep
    az deployment sub what-if --name deploystorage --location eastus --template-file infra\infrastructure-rg.bicep --parameters infra\infrastructure-rg.params.dev.json
    az deployment sub create --name deploystorage  --location eastus --template-file infra\infrastructure-rg.bicep --parameters infra\infrastructure-rg.params.dev.json
   ```
   
### Tarea 5
Crear Pipeline en AzureDevops para un despliegue automatico de la infraestructura
  1. Crea un pipeline desde "azure-pipelines-create-infra-dev.yml" o "azure-pipelines-create-infra-uat.yml" dependiendo el ambiente a configurar
  2. Ejecuta el agente
  3. Debera de generar el resource group en tu subscripción

### Tarea 6 
  1. Dentro del resource group genera 3 storage accounts

### Tarea 7
  1. Dentro del resource grouop genera una maquina virtual

### Tarea 8 
Genera los siguientes recursos

1. Service Plan con 2 functions
2. Service Plan con 3 web apps
3. Todos los servicios deben mantener Application Insights encendido
