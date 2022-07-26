#language: pt

@regression
@pdp

Funcionalidade: Página do Produto
    Sendo um usuário do site e-commerce Automation Practice
    Quero poder personalizar produtos que irei comprar na PDP
    Para ter uma melhor experiência de compra

    Contexto: Acessar a Página do Produto
     Dado que esteja na Home
     Quando realizar uma search por um produto existente
     E acessar a página do produto

    @mudar_colors_pdp
    Cenário: Trocar a cor do produto na PDP
     Quando alterar a cor do produto
     Então deverá alterar a imagem apresentada na PDP

    @aumentar_quantity_produto_pdp
    Cenário: Aumentar a quantidade do produto na PDP
     Quando aumentar a quantidade de produto
     Então deverá alterar a quantidade exibida na PDP

    @adicionar_produto__cart_pdp
    Cenário: Adicionar produto ao carrinho pela pdp
     Quando adicionar o produto ao carrinho
     Então o usuário visualizará a mensagem de que o produto foi adicionado com sucesso "<msg>" 

    Exemplos:
    |msg                                             |
    |Product successfully added to your shopping cart|

    @deletar_produto__cart_checkout
    Cenário: Adicionar produto ao carrinho pela pdp
     Quando adicionar o produto ao carrinho
     E o usuário for direcionado ao SHOPPING-CART SUMMARY
     Então deverá deletar o produto do Cart