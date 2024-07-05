> # ST-Tools
> 
> O ST-Tools foi desenvolvido para facilitar e agilizar a manipulação do seu computador Windows. Nossa ferramenta oferece diversos comandos úteis e fáceis de executar, permitindo que você crie arquivos ou diretórios, encontre arquivos específicos, crie repositórios no GitHub, entre muitas outras funcionalidades.
> 
>
> ## Inicialização
> 
> Para simplificar ao máximo sua rotina, desenvolvemos um comando para inicializar e disponibilizar os comandos em qualquer diretório. Siga as etapas abaixo:
> 
> 1. Pressione **Ctrl + R** para abrir a janela 'Executar';
> 2. Na janela 'Executar', digite **Powershell** e pressione 'Enter';
> 3. Clone nosso repositório:
>    ```shell
>    git clone https://github.com/Sant-Thiago/ST-Tools.git
>    ```
> 4. Navegue até o diretório `/Automations`:
>    ```shell
>    cd ./ST-Tools/Automations
>    ```
> 5. Finalmente, execute o comando **init.ps1** e aproveite!
>    ```shell
>    ./init.ps1
>    ```
> 
>
> ## Funcionalidades
> 
> - Criação de arquivos e diretórios
> - Localização de arquivos específicos
> - Criação de repositórios no GitHub
> - E muito mais!
> 
> 
> ### Configurar GitHub
> 
> Para criar repositórios diretamente do terminal, primeiro configure o GitHub com o comando `configGitHub`, utilizando seu token do GitHub:
> 
> ```shell
> configGitHub "SEU_TOKEN_AQUI"
> ```
> 
> O comando para criar repositórios é `Repository`, que aceita os seguintes parâmetros:
> 
> - `name` (String): Nome do repositório.
> - `description` (String): Descrição do repositório.
> - `private` (bool): Define se o repositório será privado ou público.
> - `template` (String): Nome de um repositório usado como modelo para criar o novo.
> 
> O comando `Repository` também pode ser utilizado com apenas o nome do diretório ou sem nenhum parâmetro, utilizando valores padrão:
> 
> ```shell
> Repository "NOME_DO_DIRETORIO"
> ```
> 
> ou
> 
> ```shell
> Repository
> ```
> 
> Com essas configurações, você poderá criar e gerenciar repositórios diretamente do terminal de forma rápida e eficiente.
>
>
> ## Contribuição
> 
> Se você quiser contribuir com o desenvolvimento do ST-Tools, sinta-se à vontade para fazer um fork do repositório, criar uma nova branch e enviar um pull request.
> 
>
> ## Licença
> 
> Este projeto está licenciado sob a [MIT License](LICENSE).
> 
> ---
> 
> Desenvolvido por [Sant-Thiago](https://github.com/Sant-Thiago)
