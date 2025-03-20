*** Settings ***

Resource  ../resources/configuracoes_de_ambiente/configuracoes_de_ambiente.resource
Resource  ../resources/variaveis/variaveis.robot


*** Keywords ***
Abrir site
    Open Browser     ${URL}     ${BROWSER}   
    Maximize Browser Window

Clicar no botão central de inicio
    Click Button    ${button_home}
    Sleep  2s

Clicar no botao "Create new account"
    Click Button    ${button_cadastro}
    Sleep  2s

Preencher campos de Cadastro
    Input Text    ${input_email}    be060158@intelbras.com.br
    Input Password    ${input_password}    123456

Clicar no botão "Signup"
    Click Button    ${button_signup}

*** Test Cases ***
Cenario 1: Cadastro bem-sucedido 
    Abrir site    
    Clicar no botão central de inicio
    Clicar no botao "Create new account"
    Preencher campos de Cadastro
    Clicar no botão "Signup"

