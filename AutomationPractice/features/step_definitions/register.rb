Dado('que o usuário esteja na página Authentication do site e-commerce Automation Practice') do
    @login_page == @register_page
    @register_page = Pages::Login.new
    @register_page.load
  end
  
Dado('que o usuário cadastrou um e-mail com sucesso') do
     @register_page.input_email_register.set Factory::Dynamic.dynamic_data[:r_email]
     @register_page.btn_for_register.click
end
  
Quando('a página for direcionada para YOUR PERSONAL INFORMATION') do
    @register_page.wait_until_formulary_visible
end

  
Então('deverão ser cadastrados os dados requisitados com sucesso') do
    @register_page.register_data
    @register_page.btn_data_register.click
end

Então('o usuário logará na conta {string}') do |msg|
    expect(@register_page.msg_ok.text).to eql msg
end

