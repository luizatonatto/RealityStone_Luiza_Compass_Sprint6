Dado('que esteja na página de login do site e-commerce Automation Practice') do
    @login_page = Pages::Login.new
    @login_page.load
  end

Quando('o usuário realizar Sign In com e-mail {string} e senha {string} existentes') do |email, password|
    @login_page.login(email,password)
end

Então('o usuário visualizará um modal com mensagem {string}') do |msg|
    expect(@login_page.error_message.text).to eql msg
end

Então('o usuário visualizará a mensagem de sucesso {string}') do |msg| 
    expect(@login_page.msg_ok.text).to eql msg
end


Dado('clique na funcionalidade Forgot your password?') do
    @login_page.forgot_pass.click
end
  
Quando('se redigir a página Authentication') do
end
  
Então('deverá preencher o requisito do e-mail com {string} para recuperar a Password') do |email|
    @login_page.rec_pass(email)
end
  
Então('o usuário visualizará a mensagem {string}') do |msg|
    expect(@login_page.msg_forgot_pass.text).to eql msg
end

Então('o usuário visualizará a mensagem {string} de sucesso') do |msg|
    expect(@login_page.msg_rec_pass.text).to eql msg
end
