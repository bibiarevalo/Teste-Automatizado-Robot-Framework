
# Teste Estagiário - Robot

## Sobre o projeto

O presente teste é direcionado para o candidato a vaga de estagiário em automação de testes e desenvolvimento, tendo como objetivo avaliar o conhecimento básico do candidato em automação de testes utilizando Robot Framework, sua capacidade analítica, habilidades de programação e entendimento de boas práticas em testes automatizados.

## Contexto do Case:
A empresa XYZ está desenvolvendo um novo portal web para seus clientes realizarem login e gerenciarem seus produtos e serviços.
Para garantir a qualidade da aplicação, é necessário automatizar os testes utilizando Robot Framework. O objetivo será criar testes automatizados para validar a funcionalidade de cadastro e login
de usuário.

## 🚀Starting

🔗 https://teste-estagiarios.vercel.app/ - aplicação Web

## 🛠 Tecnologias e Ferramentas 
- Linguagem de programação: Phython, Java Script
- Framework de testes: Robot Framework
- Ferramentas de suporte: Selenium Library, Faker Library

## Bibliotecas Auxiliares
- OperatingSystem
- String
- Collections

## 📋 Pré-requisitos 
Para rodar o projeto com sucesso, é necessário ter instalado: 

[Robot Framework](https://robotframework.org/?tab=1#getting-started)

[Faker Library](https://pypi.org/project/robotframework-faker/)

[Python](https://www.python.org/) - 3.13.2

[Selenium Library](https://robotframework.org/SeleniumLibrary/)

[Chrome](https://www.google.pt/intl/pt-PT/chrome/?brand=FKPE&gclid=Cj0KCQjwk96lBhDHARIsAEKO4xZL-Es1KmoysYeont3NWAq9nu-l02N3CWExTlyoP3MM8NJi4rVe-NUaAlVCEALw_wcB&gclsrc=aw.ds/)

### Instalação e Configuração
**1.** Clone o repositório e configure: 
```bash
  git clone https://github.com/bibiarevalo/Teste-Automatizado-Robot-Framework.git
  cd Teste-Automatizado-Robot-Framework
```
**2.** Instale as dependêcias:
```bash
  pip install robotframework 
  pip install --upgrade robotframework-seleniumlibrary 
  pip install robotframework-faker 
  pip install setuptools

```

## ▶️ Como Executar os Testes

```bash
# rodar um teste específico:

  cd .\testes\
  robot -d results -t "Cenário <número>: <nome do cenário>" nome-do-arquivo.robot

# rodar uma suite de testes
  cd .\testes\
  robot -d results nome-do-arquivo.robot 
```

## 📂 Estrutura dos Testes  

Teste-Automatizado-Robot-Framework \
┣ ▼ resources  \
--┣ ▼ configuraçoes_de_ambiente \
------┣ ⮩ configuraçoes_de_ambiente.robot \
--┣ ▼ variaveis \
------┣ ⮩ variaveis.robot\
┣ ▼ testes \
------┣ ⮩ cadastro.robot\
------┣ ⮩ login.robot\
┣  .gitignore \
┣   LICENSE\
┗   README.md
  
## ✒️ Autores

- [Beatriz Arevalo Freitas](https://www.linkedin.com/in/beatriz-arevalo-freitas?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=ios_app/) 

