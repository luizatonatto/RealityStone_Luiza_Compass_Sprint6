#language: pt

@regression
@cadastro
Funcionalidade: Cadastro

  Como um usuário do site e-commerce Automation Practice
  Quero poder acessar a página de Authentication
  Para fazer um cadastro e realizar compras

  @validacao_cadastro
  Cenário: Realizar um cadastro na página de Authentication
    Dado que o usuário esteja na página Authentication do site e-commerce Automation Practice
    E que o usuário cadastrou um e-mail com sucesso
    Quando a página for direcionada para YOUR PERSONAL INFORMATION
    Então deverão ser cadastrados os dados requisitados com sucesso
    E o usuário logará na conta "Welcome to your account. Here you can manage all of your personal information and orders."


   


 
                               
