*** Settings ***
Library          String

Resource         Login_resources.robot
Resource         add_funcionario_page.robot
Variables        ../locators/home_locators.yml
Variables        ../locators/cadastrar_locators.yml
Variables        ../data/login_user.yml


*** Keywords ***
Dado que tenha feito login com credenciais validas
    Dado que esteja na pagina inicial da orangehrmlive
    Quando acessar com login de credenciais validas
    Adicionar funcionario

E acesse a tela de cadastro de novo administrador
    Wait Until Element Is Visible    xpath=${menu_admin}
    Click Element                    xpath=${menu_admin}

Quando clicar no botão adicionar
    Wait Until Element Is Visible    locator=${add_user}
    Click Button                     locator=${add_user}

E preencher com os dados de novo administrador
    Wait Until Element Is Visible    locator=${pagina_add_user}
    Click Element                    locator=${user_role}
    Click Element                    locator=${role_select}
    Input Text                       locator=${employee_name}                text=Arnaldo Ferreira Junior
    Wait Until Element Is Visible    locator=${select_employee_name}
    Click Element                    locator=${select_employee_name}
    Wait Until Element Is Visible    locator=${status}
    Click Element                    locator=${status}
    Wait Until Element Is Visible    locator=${select_status}
    Click Element                    locator=${select_status}  
    ${fullName}                      Generate Random Full Name
    Set Suite Variable               ${full_name}
    Input Text                       locator=${input__create_username}        text=${GENERATED_NAME}
    Input Text                       locator=${input_create_password}         text=Teste123
    Input Text                       locator=${input_confirm_password}        text=Teste123
    Click Button                     locator=${button_save}

Generate Random Full Name
    [Documentation]    Gera um nome aleatório e salva em uma variável de suíte.
    ${lastName}=    Generate Random String            5                    lowercase
    ${full_name}=    Set Variable              Tamires ${lastName}
    Set Suite Variable    ${GENERATED_NAME}    ${full_name}
    RETURN    ${full_name}


Então validar que foi cadastrado com sucesso
    Wait Until Element Is Visible    locator=${records_found}
    Wait Until Page Contains         text=${full_name}



Dado que esteja na pagina de adicionar novos usuarios
    Dado que tenha feito login com credenciais validas
    E acesse a tela de cadastro de novo administrador
    Quando clicar no botão adicionar
    E preencher com os dados de novo administrador
   

Quando fizer busca de novo usuario       
    Wait Until Element Is Visible    locator=${pagina_system_user}
    Wait Until Element Is Visible    locator=${buscar_username}
    Input Text                       locator=${buscar_username}    text=${full_name}
    Click Element                    locator=${search}

Então validar que usuario esta sendo exibido em tela
    Wait Until Element Is Visible    locator=${records_found}
    Wait Until Page Contains         text=${full_name}


E clique em deletar usuario
    Wait Until Element Is Visible    locator=${records_found}
    Wait Until Element Is Visible    locator=${deletar_usuario}
    Click Element                    locator=${deletar_usuario}
    Wait Until Element Is Visible    locator=${modal_deletar}
    Click Element                    locator=${modal_deletar}

Então validar que não existe mais em tela
    Wait Until Element Is Visible       locator=${records_found}
    Wait Until Page Does Not Contain    text=${full_name}
