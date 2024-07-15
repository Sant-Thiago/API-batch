# ST-Tools

O ST-Tools foi desenvolvido para facilitar e agilizar a manipulação do seu computador Windows. Nossa ferramenta oferece uma variedade de comandos poderosos e intuitivos para otimizar suas tarefas diárias, desde operações básicas até gerenciamento avançado de sistemas.

## Inicialização

Para iniciar e utilizar os comandos do ST-Tools em qualquer diretório, siga estas etapas simples:

1. Pressione **Ctrl + R** para abrir a janela 'Executar';
2. Digite **Powershell** e pressione 'Enter';
3. Clone o repositório do ST-Tools:
   ```shell
   git clone https://github.com/Sant-Thiago/ST-Tools.git
   ```
4. Navegue até o diretório `/Automations`:
   ```shell
   cd ./ST-Tools/Automations
   ```
5. Execute o arquivo de inicialização **init.ps1**:
   ```shell
   ./init.ps1
   ```

## Funcionalidades Principais

- **Gerenciamento do Sistema**: Monitoramento e diagnóstico detalhados para sistemas Windows, incluindo informações sobre hardware, rede e processos.

- **Automação de Tarefas**: Criação de arquivos, diretórios e repositórios no GitHub diretamente do terminal.

- **Assistência por IA**: Integração com um assistente de inteligência artificial para responder perguntas e oferecer suporte técnico.

## Gerenciamento do Sistema

O script `system.ps1` é uma ferramenta robusta para extrair informações detalhadas do sistema Windows. Ele suporta vários tipos de consultas para obter dados sobre o sistema operacional, hardware, rede, e mais.

### Parâmetros

- `$type` (string): Define o tipo de informação a ser extraída. Escolha entre categorias como sistema operacional, processador, memória, disco rígido, rede, entre outros.
- `$field` (string): (Opcional) Especifica um campo específico a ser exibido. Se não for fornecido, o script exibirá todas as informações disponíveis para o tipo selecionado.

### Exemplos de Uso

1. **Obter informações gerais do sistema:**
   ```powershell
   .\system.ps1 -type info
   ```

2. **Obter informações sobre o processador:**
   ```powershell
   .\system.ps1 -type processor
   ```

3. **Obter um campo específico da RAM (por exemplo, Nome):**
   ```powershell
   .\system.ps1 -type ram -field name
   ```

4. **Listar todos os membros de um tipo específico:**
   ```powershell
   .\system.ps1 -type processor -field "/?"
   ```

## Configuração GitHub

Para simplificar a criação de repositórios diretamente do terminal, configure o GitHub com o comando `configGitHub`, usando seu token do GitHub:

```shell
configGitHub "SEU_TOKEN_AQUI"
```

O comando `Repository` cria repositórios no GitHub com opções para nome, descrição, privacidade e uso de modelo:

```shell
Repository "NOME_DO_DIRETORIO"
```

ou

```shell
Repository
```

## Integração com Assistente de IA

A integração com assistente de IA permite obter suporte e respostas a perguntas diretamente no terminal com o comando:

```shell
chat "sua pergunta"
```

Isso proporciona uma maneira eficiente de acessar informações e resolver problemas sem interromper suas tarefas.

## Contribuição

Se deseja contribuir com o desenvolvimento do ST-Tools, faça um fork do repositório, crie uma nova branch e envie um pull request.

## Licença

Este projeto está licenciado sob a [MIT License](LICENSE).

---

Desenvolvido por [Sant-Thiago](https://github.com/Sant-Thiago)
