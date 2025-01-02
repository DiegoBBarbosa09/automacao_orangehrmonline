*** Settings ***
Documentation    Cadastrar novo administrador e validar se houve sucesso
Resource         ../resources/pages/cadastrar_resources.robot
Resource         ../resources/utils/web.resource

Test Setup       Abrir Navegador
Test Teardown    Fechar Navegador


*** Test Cases ***

Caso de teste 02.01 - Cadastro de novo administrador
    [Documentation]    Cadastrar novo ADMIN e validar se houve sucesso
    [Tags]             cadastro
    Dado que tenha feito login com credenciais validas
    E acesse a tela de cadastro de novo administrador
    Quando clicar no botão adicionar
    E preencher com os dados de novo administrador
    Então validar que foi cadastrado com sucesso

Caso de teste 02.02 - Busca por usuario criado por administrador
    [Documentation]    Buscar ADMIN cadastrado
    [Tags]             busca
    Dado que esteja na pagina de adicionar novos usuarios
    Quando fizer busca de novo usuario
    Então validar que usuario esta sendo exibido em tela  
    
Caso de teste 02.03 - Apagar usuario administrador criado
    [Documentation]    Apagar ADMIN cadastrado
    [Tags]             Apagar
    Dado que esteja na pagina de adicionar novos usuarios
    Quando fizer busca de novo usuario
    E clique em deletar usuario
    Então validar que não existe mais em tela