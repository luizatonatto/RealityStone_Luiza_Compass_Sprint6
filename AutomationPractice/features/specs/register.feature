#language: pt

@regression
@cadastro
  
  Funcionalidade: Cadastro
  Como um usuário do site e-commerce Automation Practice
  Quero poder acessar a página de Authentication
  Para fazer um cadastro e realizar compras

    Contexto: 
      Dado que o usuário esteja na página Authentication do site e-commerce Automation Practice

  @validacao_cadastro_ok
  Cenário: Realizar um cadastro na página de Authentication
    E que o usuário cadastrou um e-mail com sucesso
    Quando a página for direcionada para YOUR PERSONAL INFORMATION
    Então deverão ser cadastrados os dados requisitados com sucesso
    E o usuário logará na conta "Welcome to your account. Here you can manage all of your personal information and orders."

  @validacao_cadastro_incorreto
  Cenário: Realizar um cadastro incorreto na página de Authentication
    E que o usuário cadastrou um e-mail com sucesso
    Quando a página for direcionada para YOUR PERSONAL INFORMATION
    Então deverão ser cadastrados os dados requisitados sem sucesso
    E o usuário não logará na conta "There are 8 errors"
  
  @validacao_cadastro_invalido
  Cenário: Realizar um cadastro inválido na página de Authentication
    E que o usuário utilizou um e-mail já cadastrado para o registro
    Então encontrará a mensagem de erro "An account using this email address has already been registered. Please enter a valid password or request a new one."


   


 
                               
