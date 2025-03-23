*** Settings ***

Resource  ../resources/configuracoes_de_ambiente/configuracoes_de_ambiente.resource
Resource  ../resources/variaveis/variaveis.robot

*** Keywords ***

#Cenário 1
Abrir site
    Open Browser     ${URL}     ${BROWSER}   
    Maximize Browser Window

Clicar no botão "Password-based Authentication"
    Wait Until Element Is Visible           ${LINK_HOME}                  timeout=10s
    Click Element                           ${LINK_HOME}
    Wait Until Page Contains Element        ${LINK_CREATE_ACCOUNT}        timeout=5s

Preencher campos de Login
    ${CREDENTIALS}    Get File    ${CURDIR}/credentials.txt

    ${credenciais_lista}    Split To Lines    ${CREDENTIALS}

    ${email}    Get From List    ${credenciais_lista}    0
    ${password}    Get From List    ${credenciais_lista}    1

    Input Text    ${INPUT_EMAIL}    ${email}
    Input Password    ${INPUT_PASSWORD}   ${password}

Clicar no botão "Login"
    Wait Until Element Is Visible           ${BTN_LOGIN}                  timeout=10s
    Click Button                           ${BTN_LOGIN}
    Wait Until Page Contains Element        ${BTN_LOGIN}        timeout=5s
    
Verificar se o login foi bem sucedido
    Wait Until Page Contains Element    ${LOGIN_SUCCESSFUL_MESSAGE}       timeout=5s


#Cenário 2

Preencher campos de Login incorretos
    ${email}        FakerLibrary.Email
    ${password}     FakerLibrary.Password

    Input Text    ${INPUT_EMAIL}    ${email}
    Input Password    ${INPUT_PASSWORD}   ${password}

Verificar se a mensagem "Invalid credentials" é exibida
    Wait Until Page Contains Element    ${INVALID_CREDENTIALS_MESSAGE}       timeout=5s
    
*** Test Cases ***
Cenario 1: Login bem-sucedido 
    Abrir site    
    Clicar no botão "Password-based Authentication"
    Preencher campos de Login
    Clicar no botão "Login"
    Verificar se o login foi bem sucedido

Cenario 2: Login com credenciais erradas
    Abrir site    
    Clicar no botão "Password-based Authentication"
    Preencher campos de Login incorretos
    Clicar no botão "Login"
    Verificar se a mensagem "Invalid credentials" é exibida