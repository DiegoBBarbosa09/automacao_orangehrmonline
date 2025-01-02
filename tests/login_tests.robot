*** Settings ***
Documentation    Suite de testes de Login no site orangehrmlive
Resource         ../resources/pages/login_resources.robot
Resource         ../resources/utils/web.resource

Test Setup       Abrir Navegador
Test Teardown    Fechar Navegador

*** Test Cases ***
Caso de teste 01.01 - Realizar login com sucesso
    [Documentation]    Login com credenciais de administrador para fazer login no site orangehrmlive
    [Tags]             Login
    Dado que esteja na pagina inicial da orangehrmlive
    Quando acessar com login de credenciais validas
    Então acessamos a tela inicial da orangehrmlive

Caso de teste 01.02 - Realizar login e logout
    [Documentation]    Validar usuario fazendo login e login com sucesso
    [Tags]             Logout
    Dado que esteja logado no sistema orangehrmlive
    Quando clicar no avatar para abrir dropdown
    E clicar no botão de logout
    Então devo ser redirecionado para tela de login