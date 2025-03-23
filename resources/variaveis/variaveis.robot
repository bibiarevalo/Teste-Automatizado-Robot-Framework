*** Variables ***

#botões                      
${BTN_HOME}                      xpath=//a[@href='/password/login']
${BTN_CREATE_ACCOUNT}            xpath=/html/body/div/div/a/p
${BTN_SIGNUP}                    xpath=//button[@type='submit']
${BTN_LOGIN}                     xpath=//button[@type='submit']

#inputs
${INPUT_EMAIL}                   xpath=/html/body/div/div/form/div[1]/input
${INPUT_PASSWORD}                xpath=//input[@type='password'] 


#elementos
${WELCOME}                       xpath=/html/body/div/div/p[1]
${SIGNUP}                        xpath=/html/body/div/div/form/h2
${LOGIN_SUCESSFUL}               xpath=/html/body/div/div/p[2]

#alertas
${INVALID_CREDENTIALS}           xpath=/html/body/div/div/p
${EMAIL_ERROR_MESSAGE}           xpath=//div[contains(text(), 'Preencha este campo.')]

#arq. de texto
${CREDENTIALS_FILE}    ${CURDIR}/credentials.txt