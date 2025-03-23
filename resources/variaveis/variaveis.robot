*** Variables ***

#links                  
${LINK_HOME}                      xpath=//a[@href='/password/login']
${LINK_CREATE_ACCOUNT}            xpath=//a[@href='/password/signup']

#botões
${BTN_SIGNUP}                    xpath=//button[@type='submit']
${BTN_LOGIN}                     xpath=//button[@type='submit']
                  
#inputs
${INPUT_EMAIL}                   xpath=/html/body/div/div/form/div[1]/input
${INPUT_PASSWORD}                xpath=//input[@type='password'] 

#elementos
${ELEMENT_SIGNUP}                xpath=/html/body/div/div/form/h2
${ELEMENT_LINK_LOGIN}            xpath=/html/body/div/div/a/p

#mensagens
${WELCOME_MESSAGE}                   xpath=/html/body/div/div/p[1]
${INVALID_CREDENTIALS_MESSAGE}       xpath=/html/body/div/div/p
${USER_EXISTS_MESSAGE}               xpath=/html/body/div/div/p
${LOGIN_SUCCESSFUL_MESSAGE}          xpath=/html/body/div/div/p[2]
${SIGNUP_SUCCESSFUL_MESSAGE}         xpath=/html/body/div/div/p[2]

#arq. de texto
${CREDENTIALS_FILE}                  ${EXECDIR}/credentials.txt