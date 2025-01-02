*** Settings ***
Resource     ../utils/web.resource
Variables    ../locators/add_funcionario_locators.yml


*** Keywords ***
Adicionar funcionario
    Wait Until Element Is Visible    locator=${pim}
    Click Element                    locator=${pim}
    Wait Until Element Is Visible    locator=${add}
    Click Element                    locator=${add}
    Wait Until Element Is Visible    locator=${input_first_name}     
    Input Text                       locator=${input_first_name}     text=${fisrt_name}
    Input Text                       locator=${input_middle_name}    text=${middle_name}
    Input Text                       locator=${input_last_name}      text=${last_name}
    Click Element                    locator=${save_employee}