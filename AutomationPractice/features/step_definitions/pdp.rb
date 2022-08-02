Quando('realizar uma search por um produto existente') do
  @product_for_search = Factory::Static.static_data('valid_product')
  @home_page.search_for(@product_for_search)
  @search_results_page = Pages::SearchResults.new
end

Quando('acessar a página do produto') do
    @search_results_page.access_product_page(0)
    @product_page = Pages::ProductPage.new
  end
  
  Quando('alterar a cor do produto') do
    @image_before = @product_page.mainimage['src']
    @product_page.colors[2].click
  end
  
  Então('deverá alterar a imagem apresentada na PDP') do
    expect(@product_page.mainimage['src']).not_to eql @image_before
    sleep(2)
  end

  Quando('aumentar a quantidade de produto') do
    @product_page.btn_quantity_product.click
    sleep(2)
  end
  
  Então('deverá alterar a quantidade exibida na PDP') do
    expect(@product_page.quantity_updated['src']).not_to eql [:btn_quantity_product]
  end

  Quando('adicionar o produto ao carrinho') do
    @product_page.btn_add_cart_pdp.click
  end
  
  Então('o usuário visualizará a mensagem de que o produto foi adicionado com sucesso {string}') do |msg|
    expect(@product_page.msg_sucess_cart.text).to eql msg
  end

  Quando('o usuário for direcionado ao SHOPPING-CART SUMMARY') do
    @product_page.btn_checkout_cart.click
  end
  
  Então('deverá deletar o produto do Cart') do
    @product_page.btn_delete_cart.click
    @product_page.wait_until_msgcartempty_visible(wait: 4)
  end