# Script para instalação do Kaspersky

Script montado para auxiliar na instalação do Kaspersky em maquinas Linux.
Esse script esta auxilinado em realizar o download da versão expecifica para a versão do Linux que esta sendo utilizada na maquina

## Passo a passo

Preparação:

1° Cria pasta "Kaspersky" dentro do diretorio "/opt"

  * mkdir kaspersky

2° Baixe o script do repositorio

  * wget https://github.com/Projeto-Automation/Script_Kaspersky/blob/main/install_kaspersky.sh

3° Conceda a permissão para o script

  * chmod +x install_kaspersky.sh

4° Inicie o script com usuario ROOT

  * ./install_kaspersky

Configuração:

5°

![image](https://github.com/Projeto-Automation/Scripts/assets/148788352/d5e91053-4659-4863-bc4c-f6537d629f1a)

  * Para a instalação apenas do Endpoint Security preencha com N

6°

![image](https://github.com/Projeto-Automation/Scripts/assets/148788352/6a174831-071a-47a2-bafb-0bf8ae419542)

  * Mantenha a opção padrão que o script informou

7°

  * Aceite o termo de segurança da Kaspersky

8°

![image](https://github.com/Projeto-Automation/Scripts/assets/148788352/dc82b460-2b7f-4d04-a932-069583334fd9)

  * Informe o usario que recebera a permissão de administrador do Kaspersky

9°

![image](https://github.com/Projeto-Automation/Scripts/assets/148788352/adb8c064-e636-45d4-a57a-d4cfe22051bf)

  * Mantenha a opção padrão

10°

![image](https://github.com/Projeto-Automation/Scripts/assets/148788352/e235b2e6-8089-4347-b04b-2614040069f0)

  * Informe "n" para não ativar a opção do proxy

11°

![image](https://github.com/Projeto-Automation/Scripts/assets/148788352/c72e0f62-0b06-4e28-8509-7a9ecb601095)

  * Informe "y" para ele baixar o banco de dados de ameaças automaticamente 

12°

![image](https://github.com/Projeto-Automation/Scripts/assets/148788352/b3119316-3fba-4a04-8eab-dcc280471a1a)
  
  * Informe "y" para ativar os updates automaticos do banco

13°

![image](https://github.com/Projeto-Automation/Scripts/assets/148788352/7fb9902b-e185-4487-9f7b-61edf9b72324)
  
  * Informe a "LICENÇA"

# Informações validas

### Para identificar o status do Kaspersky utilize o seguinte comando:

  * kesl-control --app-info

![image](https://github.com/Projeto-Automation/Scripts/assets/148788352/80de5af0-3595-48e3-9f6a-5bc14ca6718e)


### Para opções de configurações entre na pasta "kesl/bin"

![image](https://github.com/Projeto-Automation/Scripts/assets/148788352/bf5043ba-7b35-4817-85dd-0d503542c66c)

  * Nessa pasta ira conter os scripts de tarefas especificas, e no "kesl-control" quando você inicia ele lhe apresenta todas as opções que podem ser alteradas

![image](https://github.com/Projeto-Automation/Scripts/assets/148788352/3dbd1750-4abe-4300-a5a7-2b18f1254779)

  * Com isso você pode rodar ele novamente passando a tarefa desejada.






