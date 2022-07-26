Dado('que usuário escolheu o produto e adicionou ao Cart') do
    @payment_page = Pages::Payment.new
    @payment_page.load
    @payment_page.btn_add_cart_pdp.click
  end
  
  Dado('clicou no botão de Proceed Checkout') do
    @payment_page.btn_checkout_pdp.click
    @payment_page.checkout_summary.click
  end
  
  Quando('logar na sua conta {string}, {string} existente') do |email, password|
    @payment_page.login(email, password)
  end
  
  Quando('confirmar o endereço de entrega') do
    @payment_page.checkout_address.click
  end
  
  Quando('selecionar o frete do produto') do
    @payment_page.btn_frete.click
    @payment_page.checkout_frete.click
  end
  
  Quando('selecionar a forma de pagamento por transfêrencia {string}') do |payment_method_one|
    @payment_page.pay_by_bank.click

  end

  Quando('selecionar a forma de pagamento por cheque {string}') do |payment_method_two|
    @payment_page.pay_by_check.click

  end
  
  Então('o usuário deverá confirmar a sua compra e pagá-la') do
    @payment_page.confirm_payment.click
  end