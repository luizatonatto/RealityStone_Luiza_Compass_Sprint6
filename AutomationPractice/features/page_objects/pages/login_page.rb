require_relative '../sections/header'

module Pages
    class Login < SitePrism::Page
        set_url '?controller=authentication&back=my-account'
        
        # login
        element :error_message, '[class="alert alert-danger"] li'
        element :input_email, '[class="form-group"] #email'
        element :input_password, '[class="form-group"] #passwd'
        element :btn_login, '[id="SubmitLogin"]'
        element :msg_ok, '[class="info-account"]'


        # recuperação senha
        element :forgot_pass, '#login_form > div > p.lost_password.form-group > a'
        element :msg_forgot_pass, '#center_column > div > div > ol > li'
        element :email_forgot_pass, '[id="email"]'
        element :btn_retrive_pass, '[class="submit"] [class="btn btn-default button button-medium"]'
        element :msg_rec_pass, ' [class="box"] p' 
         
        # cadastro
        element :input_email_register, '[id="email_create"]'
        element :btn_for_register, '[id="SubmitCreate"]'
        element :formulary, '[id="account-creation_form"]'
        element :btn_gender, '[id="id_gender2"]'
        element :first_name_register, '[id="customer_firstname"]'
        element :last_name_register, '[id="customer_lastname"]'
        element :email_register, '[id="email"]'
        element :password_register, '[id="passwd"]'
        element :first_name_address, '[id="firstname"]'
        element :last_name_address, '[id="lastname"]'
        element :address_register, '[id="address1"]'
        element :city_register_address, '[id="city"]'
        element :zip_code_address, '[id="postcode"]'
        element :mobile_phone_register, '[id="phone_mobile"]'
        element :btn_data_register, '[id="submitAccount"]'
        elements :state_register, '[id="uniform-id_state"] [value]'
        

        def login(email,password)
           input_email.set email
           input_password.set password
           btn_login.click
        end


        def register_data()
            first_name_register.set Factory::Dynamic.dynamic_data[:first_name]
            last_name_register.set Factory::Dynamic.dynamic_data[:last_name]
            email_register.set Factory::Dynamic.dynamic_data[:r_email]
            password_register.set Factory::Dynamic.dynamic_data[:r_password]
            first_name_address.set Factory::Dynamic.dynamic_data[:first_name]
            last_name_address.set Factory::Dynamic.dynamic_data[:last_name]
            address_register.set Factory::Dynamic.dynamic_data[:address]
            city_register_address.set Factory::Dynamic.dynamic_data[:r_city]
            zip_code_address.set Factory::Dynamic.dynamic_data[:r_zip_code]
            mobile_phone_register.set Factory::Dynamic.dynamic_data[:r_mobile_phone]
            state_register[rand(1..50)].click
        end

        def rec_pass(email)
            email_forgot_pass.set email
            btn_retrive_pass.click
        end 
    end
end