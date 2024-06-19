# Infrastructure as code (IaC)
#
# TERRAFORM
#

## Configuration
1. Login en Github
2. Fork de repository
![image](https://github.com/Digital-Apps-Innovation-CSA/IaCIllumination/assets/62779771/20eb730a-e675-4803-8433-eb769700a66b)
3. Agregar los siguientes secrets en el repositorio de github
   
  AZURE_CLIENT_ID
  AZURE_SUBSCRIPTION_ID
  AZURE_TENANT_ID
  ARM_CLIENT_SECRET

  Settings / Secrets and Variables

   ![image](https://github.com/Digital-Apps-Innovation-CSA/IaCIllumination/assets/62779771/83435b99-4cad-49b6-9004-b720ee585d44)

 Actions / New Repositor Secret

 ![image](https://github.com/Digital-Apps-Innovation-CSA/IaCIllumination/assets/62779771/5924d11a-e554-47a1-a93e-81b1054fa3d4)

4. Clonar localmente el repositorio

Provider
5. Crear en la subscripción de Azure un Storage Account con un container
6. Configurar los valores en el archivo provider.tf
   resource_group_name
   storage_account_name
   container_name

### Tarea 1 
1. Configurar los nombres de los valores en dev/auto.tvars para crear el grupo de recursos de ejemplo
2. Subir los cambios al repositorio validar que el Workflo se ejecute y 

### Tarea 2
  1. Dentro del resource group genera 3 storage accounts

### Tarea 3
  1. Dentro del resource grouop genera una maquina virtual

### Tarea 4
Genera los siguientes recursos

1. Service Plan con 2 functions
2. Service Plan con 3 web apps
3. Todos los servicios deben mantener Application Insights encendido
