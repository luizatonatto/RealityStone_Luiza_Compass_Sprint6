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
     Quando realizar uma search por um produto existente
     Então deverá ser retornado o resultado da busca escolhida

    @search_por_produtos_diferentes
    Esquema do Cenário: Buscar por produtos existentes
     Quando buscar pelo produto "<produto>"
     Então deverá ser retornado o resultado da busca escolhida

    Exemplos:          
    |     produto     |
    | Dresses         |
    | T-shirts        |
    | Blouses         |
    
        # primeira execução = Faded Short Sleeve T-shirts
        # segunda execução = Blouse  
        # terceira execução = Printed Dress
        