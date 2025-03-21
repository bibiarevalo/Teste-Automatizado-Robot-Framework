*** Settings ***

Resource  ../resources/configuracoes_de_ambiente/configuracoes_de_ambiente.resource
Resource  ../resources/variaveis/variaveis.robot


*** Keywords ***

#Cenário 1
Abrir site
    Open Browser     ${URL}     ${BROWSER}   
    Maximize Browser Window

Clicar no botão "Password-based Authentication"
    Wait Until Element Is Visible           ${BTN_HOME}                  timeout=10s
    Click Element                           ${BTN_HOME}
    Wait Until Page Contains Element        ${BTN_CREATE_ACCOUNT}        timeout=5s

Clicar no botão "Create new account"
    Wait Until Element Is Visible            ${BTN_CREATE_ACCOUNT}       timeout=10s
    Click Element                            ${BTN_CREATE_ACCOUNT}
    Wait Until Page Contains Element         ${SIGNUP}                   timeout=5s
Preencher campos de Cadastro
    Input Text    ${INPUT_EMAIL}    biazita@intelbras.com.br
    Input Password    ${INPUT_PASSWORD}    123456

Clicar no botão "Signup"
    Wait Until Element Is Visible    ${BTN_SIGNUP}       timeout=10s
    Click Element   ${BTN_SIGNUP}
    Wait Until Page Contains Element    ${WELCOME}       timeout=5s


*** Test Cases ***
Cenario 1: Cadastro bem-sucedido 
    Abrir site    
    Clicar no botão "Password-based Authentication"
    Clicar no botão "Create new account"
    Preencher campos de Cadastro
    Clicar no botão "Signup"



