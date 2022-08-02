Dado('que o usuário esteja na página Authentication do site e-commerce Automation Practice') do
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


Então('deverão ser cadastrados os dados requisitados sem sucesso') do
    @register_page.btn_data_register.click
end
  
  Então('o usuário não logará na conta {string}') do |msg|
    expect(@register_page.msg_no_register.text).to eql msg
end

Dado('que o usuário utilizou um e-mail já cadastrado para o registro') do
    @register_page.input_email_register.set 'teste@gm.com'
    @register_page.btn_for_register.click
end

Então('encontrará a mensagem de erro {string}') do |msg|
    expect(@register_page.msg_invalid_reg.text).to eql msg
end