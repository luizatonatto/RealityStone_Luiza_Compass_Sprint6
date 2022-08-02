#language: pt

@regression
@search


Funcionalidade: Search
    Como um usuário do site e-commerce "Automation Practice" 
    Quero poder buscar por diversos produtos
    Para poder realizar minhas compras

    Contexto: Estar na Home
    Dado que esteja na Home

    @search_por_produto
    Cenário: Buscar por um produto existente
     Quando o usuário buscar pelo produto "<produto>"
     Então deverá ser retornado o resultado da busca escolhida

     Exemplos:          
    |      produto        |
    | Printed Summer Dress|

    @search_por_produtos_diferentes
    Esquema do Cenário: Buscar por produtos existentes
     Quando o usuário buscar pelo produto "<produto>"
     Então deverá ser retornado o resultado da busca escolhida

    Exemplos:          
    |     produto     |
    | Dresses         |
    | T-shirts        |
    | Blouses         |
    
        # primeira execução = Faded Short Sleeve T-shirts
        # segunda execução = Blouse  
        # terceira execução = Printed Dress
        