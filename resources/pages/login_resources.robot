*** Settings ***
Library          SeleniumLibrary
Variables        ../data/login_user.yml
Variables        ../locators/login_locators.yml
Variables        ../locators/home_locators.yml


*** Variables ***
${URL}          https://opensource-demo.orangehrmlive.com/
${URL_HOME}     https://opensource-demo.orangehrmlive.com/web/index.php/dashboard/index
${URL_LOGIN}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login


*** Keywords ***
    
Dado que esteja na pagina inicial da orangehrmlive
    Go To                            url=${URL}
    Wait Until Element Is Visible    locator=${page_login}

Quando acessar com login de credenciais validas
    Input Text      locator=${input_user}       text=${user_admin}
    Input Text      locator=${input_password}   text=${user_pass_admin}
    Click Button    locator=${button_login}

Então acessamos a tela inicial da orangehrmlive
    Wait Until Element Is Visible    locator=${dashboard}
    Wait Until Location Is           ${URL_HOME}


Dado que esteja logado no sistema orangehrmlive
    Dado que esteja na pagina inicial da orangehrmlive
    Quando acessar com login de credenciais validas

Quando clicar no avatar para abrir dropdown
    Wait Until Element Is Visible    locator=${avatar}
    Click Element                    locator=${avatar}

E clicar no botão de logout    
    Wait Until Element Is Visible    locator=${logout}
    Capture Page Screenshot
    Click Element                    locator=${logout}
    
Então devo ser redirecionado para tela de login
    Wait Until Element Is Visible    locator=${page_login}
    Wait Until Location Is           ${URL_LOGIN}
    Capture Page Screenshot