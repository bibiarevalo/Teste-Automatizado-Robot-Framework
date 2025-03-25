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

Clicar no botão "Create new account"
    Wait Until Element Is Visible           ${LINK_CREATE_ACCOUNT}         timeout=10s
    Click Element                           ${LINK_CREATE_ACCOUNT}
    Wait Until Page Contains Element        ${ELEMENT_SIGNUP}              timeout=5s

Preencher campos de Cadastro
    ${email}        FakerLibrary.Email
    ${password}     FakerLibrary.Password

    Input Text        ${INPUT_EMAIL}      ${email}
    Input Password    ${INPUT_PASSWORD}   ${password}

    ${file_content}    Set Variable       ${email}\n${password}
    Create File    ${CREDENTIALS_FILE}    ${file_content}    UTF-8

Clicar no botão "Signup"
    Wait Until Element Is Visible    ${BTN_SIGNUP}       timeout=10s
    Click Element                    ${BTN_SIGNUP}
    
Verificar se o cadastro foi bem sucedido
    Wait Until Page Contains Element    ${WELCOME_MESSAGE}                   timeout=5s
    Wait Until Page Contains Element    ${SIGNUP_SUCCESSFUL_MESSAGE}         timeout=5s
    Wait Until Page Contains Element    ${ELEMENT_LINK_LOGIN}                timeout=5s

#Cenário 2
Validar mensagem de input vazio
    Click Button                     ${BTN_SIGNUP}
    Wait Until Element Is Visible    ${BTN_SIGNUP}       timeout=1s
 
    ${validation_messages}=    Execute JavaScript
    ...    return Array.from(document.querySelectorAll("input[required]:invalid"))
    ...        .map(input => input.validationMessage)
    ...        .join("; ");
 
    Should not be empty              ${validation_messages}
    Sleep    2s


#Cenário 3
Preencher campo de e-mail invalido
    ${userName}        FakerLibrary.UserName
    ${invalid_email}        Set Variable    ${userName}@#invalid.com
    ${password}     FakerLibrary.Password

    Input Text        ${INPUT_EMAIL}        ${invalid_email}
    Input Password    ${INPUT_PASSWORD}     ${password}

Verificar mensagem de e-mail invalido
    Wait Until Element Is Visible    ${BTN_SIGNUP}       timeout=1s
 
    ${validation_messages}=    Execute JavaScript
    ...    return Array.from(document.querySelectorAll("input[required]:invalid"))
    ...        .map(input => input.validationMessage)
    ...        .join("; ");
 
    Should not be empty              ${validation_messages}
    Sleep    2s


#Cenário 4
Preencher os campos com um e-mail e senha válidos
    ${CREDENTIALS}    Get File    ${EXECDIR}/credentials.txt

    ${credenciais_lista}    Split To Lines    ${CREDENTIALS}
    
    ${email}    Get From List       ${credenciais_lista}    0
    ${password}    Get From List    ${credenciais_lista}    1

    Input Text        ${INPUT_EMAIL}        ${email}
    Input Password    ${INPUT_PASSWORD}     ${password}

Verifique se a mensagem "User already exists" é exibida.    
    Wait Until Page Contains Element    ${USER_EXISTS_MESSAGE}       timeout=5s
    

*** Test Cases ***
Cenario 1: Cadastro bem-sucedido 
    Abrir site    
    Clicar no botão "Password-based Authentication"
    Clicar no botão "Create new account"
    Preencher campos de Cadastro
    Clicar no botão "Signup"
    Verificar se o cadastro foi bem sucedido
Cenario 2: Campos Obrigatórios
    Abrir site    
    Clicar no botão "Password-based Authentication"
    Clicar no botão "Create new account"
    Validar mensagem de input vazio

Cenario 3: Validação do formato do E-mail
    Abrir site    
    Clicar no botão "Password-based Authentication"
    Clicar no botão "Create new account"
    Preencher campo de e-mail invalido
    Clicar no botão "Signup"
    Verificar mensagem de e-mail invalido

Cenario 4: Cadastro com credencias já existentes 
    Abrir site    
    Clicar no botão "Password-based Authentication"
    Clicar no botão "Create new account"    
    Preencher os campos com um e-mail e senha válidos
    Clicar no botão "Signup"
    Verifique se a mensagem "User already exists" é exibida.