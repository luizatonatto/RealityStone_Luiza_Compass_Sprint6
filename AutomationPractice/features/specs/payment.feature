#language: pt

@regression
@payment

Funcionalidade: Pagamento
    Como um usuário do site e-commerce Automation Practice
    Quero pagar um produto existente
    Para adquiri-lo

    Contexto:
        Dado que usuário escolheu o produto e adicionou ao Cart

 @validacao_pagamento_bank
 Esquema do Cenário: validar pagamento 
    E clicou no botão de Proceed Checkout
    Quando logar na sua conta "<email>", "<password>" existente 
    E confirmar o endereço de entrega
    E selecionar o frete do produto
    E selecionar a forma de pagamento por transfêrencia "<payment_method_one>"
    Então o usuário deverá confirmar a sua compra e pagá-la

    Exemplos:
    |email        |password |payment_method_one    |
    |teste@gm.com |12345    |Pay by bank wire      |
                   

 @validacao_pagamento_check
 Esquema do Cenário: validar pagamento 
    E clicou no botão de Proceed Checkout
    Quando logar na sua conta "<email>", "<password>" existente 
    E confirmar o endereço de entrega
    E selecionar o frete do produto
    E selecionar a forma de pagamento por cheque "<payment_method_two>"
    Então o usuário deverá confirmar a sua compra e pagá-la

     Exemplos:
    |email        |password |payment_method_two    |
    |teste@gm.com |12345    |Pay by Check          |      