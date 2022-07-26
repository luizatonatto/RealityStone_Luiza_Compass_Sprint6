#language: pt

@regression
@login

Funcionalidade: Login
Como um usuário do site e-commerce Automation Practice 
Quero poder realizar um Login
Para realizar compras

  Contexto: 
    Dado que esteja na página de login do site e-commerce Automation Practice

 @verificacao_login
 Esquema do Cenário: Realizar um login
    Quando o usuário realizar Sign In com e-mail "<email>" e senha "<password>" existentes
    Então o usuário visualizará um modal com mensagem "<msg>"

    Exemplos:
    |email        |password   |msg                        |
    | teste@gm.com|   99997   | Authentication failed.    |
    | teste@12.br |   123456  | Authentication failed.    |
    |             |   123456  | An email address required.|
    | teste@gm.com|           | Password is required.     |

 @verificacao_login_ok
 Esquema do Cenário: Entrar na conta com login
  Quando o usuário realizar Sign In com e-mail "<email>" e senha "<password>" existentes
  Então o usuário visualizará a mensagem de sucesso "<msg>" 

    Exemplos:
    |email        |password |msg                                                                                      |
    |teste@gm.com |12345    |Welcome to your account. Here you can manage all of your personal information and orders.|

 @verificacao_recuperacao_password
    Esquema do Cenário: Recuperar password por E-mail
      E clique na funcionalidade Forgot your password?
      Quando se redigir a página Authentication
      Então deverá preencher o requisito do e-mail com "<email>" para recuperar a Password
      E o usuário visualizará a mensagem "<msg>"

      Exemplos:
      |email        | msg                                                    |  
      |teste        | Invalid email address.                                 |                                                                                                       
      |1234@not.br  | There is no account registered for this email address. |                                           
      
      
 @verificacao_recuperacao_password_ok
    Esquema do Cenário: Recuperar password por E-mail com sucesso
      E clique na funcionalidade Forgot your password?
      Quando se redigir a página Authentication
      Então deverá preencher o requisito do e-mail com "<email>" para recuperar a Password
      E o usuário visualizará a mensagem "<msg>" de sucesso

      Exemplos:
      |email        | msg                                                               |                                                       
      |teste@gm.com | A confirmation email has been sent to your address: teste@gm.com  |
      
   
    


  
                                                                  

