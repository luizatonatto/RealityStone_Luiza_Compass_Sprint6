Quando('acessar a página do produto') do
    @search_results_page.access_product_page(0)
    @product_page = Pages::ProductPage.new
  end
  
  Quando('alterar a cor do produto') do
    @image_before = @product_page.main_image['src']
    @product_page.colors[2].click
  end
  
  Então('deverá alterar a imagem apresentada na PDP') do
    expect(@product_page.main_image['src']).not_to eql @image_before
    @product_page.wait_until_main_image_visible(wait: 4)
  end


  Quando('aumentar a quantidade de produto') do
    @product_page.btn_quantity_product.click
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
    @product_page.wait_until_msg_cart_empty_visible(wait: 4)
  end