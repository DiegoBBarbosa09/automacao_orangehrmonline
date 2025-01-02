*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
Abrir Navegador
    Open Browser    browser=chrome    options=add_argument("--disable-popup-blocking")
    Maximize Browser Window

Fechar Navegador
    Close Browser 
