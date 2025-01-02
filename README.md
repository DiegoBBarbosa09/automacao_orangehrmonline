# Automação OrangeHRM com Robot Framework

Este projeto é uma automação web para o sistema OrangeHRM Online, utilizando o Robot Framework e a biblioteca SeleniumLibrary.

## Requisitos

Certifique-se de ter os seguintes requisitos instalados:

- Python (>=3.12, <3.14): utilize o python 3.12 pois o selenium library ainda não tem suporte no python 3.13
- Poetry para gerenciamento de dependências

## Instalação

1. Clone este repositório:

   ```bash
   git clone https://github.com/seu-usuario/automacao-orangehrm-rf.git
   cd automacao-orangehrm-rf
   ```

2. Faça o upgrad ou downgrade do python e instale as dependências utilizando o Poetry:

   ```bash
    poetry env use 3.12
    poetry install

   ```
        - A opção de troca da versão do python é opcional caso esteja utilizando a versão 3.11 ou 3.13.1 do python

3. Ative o ambiente virtual do Poetry:

   ```bash
   poetry shell
   ```

## Estrutura do Projeto

- `resources`: comtém os recursos das keywords, locators e data (dados de usuario)
- `tests/`: Contém os arquivos de teste escritos em Robot Framework.

## Como Executar os Testes

1. Certifique-se de que o ambiente virtual está ativado.
    ```bash
    poetry run pip show robotframework-seleniumlibrary
    ```

2. Execute os testes com o comando:

   ```bash
   robot tests/
   ```

## Dependências

As dependências principais do projeto são:

- **Robot Framework**: Framework para automação de testes.
- **SeleniumLibrary**: Biblioteca para automação web.
- **PyYAML**: Biblioteca para manipulação de arquivos YAML.

## Contribuição

Contribuições são bem-vindas! Siga os passos abaixo para contribuir:

1. Faça um fork do projeto.
2. Crie uma branch para sua feature ou correção de bug:

   ```bash
   git checkout -b minha-feature
   ```

3. Faça o commit das suas alterações:

   ```bash
   git commit -m "Minha nova feature"
   ```

4. Envie suas alterações para o repositório remoto:

   ```bash
   git push origin minha-feature
   ```

5. Abra um Pull Request.
