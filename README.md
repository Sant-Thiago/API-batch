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
> ### Configurar GitHub
> 
> Para criar repositórios diretamente do terminal, primeiro é necessário configurar o GitHub. Para isso, utilize o comando `configGitHub`, que aceita como parâmetro o seu token do GitHub. Uma vez configurado, você poderá criar repositórios facilmente.
>  
>    ```shell
>    configGitHub "SEU_TOKEN_AQUI"
>    ```
> 
> O comando para criar repositórios é `Repository`. Ele aceita os seguintes parâmetros:
> 
> - `name` (String): Nome do repositório.
> - `description` (String): Descrição do repositório.
> - `private` (bool): Define se o repositório será privado ou público.
> - `template` (String): Nome de um repositório existente que será usado como modelo para criar o novo repositório. Repositórios de template são modelos predefinidos que incluem arquivos, pastas e configurações específicas para agilizar a criação de novos projetos com uma estrutura similar.
> 
> O comando `Repository` também pode ser utilizado de forma mais simples, aceitando apenas o nome do diretório como parâmetro ou até mesmo nenhum parâmetro. Nesse caso, os parâmetros serão definidos com valores padrões.
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
> Com essas configurações, você estará pronto para criar e gerenciar repositórios diretamente do terminal, tornando o processo mais rápido e eficiente.
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
