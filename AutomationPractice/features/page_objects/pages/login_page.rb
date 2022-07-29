require_relative '../sections/header'
require_relative '../sections/register_sec'

module Pages
    class Login < SitePrism::Page
        set_url '?controller=authentication&back=my-account'

        section :register, Sections::Register, '[id="authentication"] [id="center_column"]'

        # login

        def login(email,password)
            input_email.set email
            input_password.set password
            btn_login.click
        end
        
        element :error_message, '[class="alert alert-danger"] li'
        element :input_email, '[class="form-group"] #email'
        element :input_password, '[class="form-group"] #passwd'
        element :btn_login, '[id="SubmitLogin"]'
        element :msg_ok, '[class="info-account"]'

        # recuperação senha

        def rec_pass(email)
            email_forgot_pass.set email
            btn_retrive_pass.click
        end 

        element :forgot_pass, '#login_form > div > p.lost_password.form-group > a'
        element :msg_forgot_pass, '#center_column > div > div > ol > li'
        element :email_forgot_pass, '[id="email"]'
        element :btn_retrive_pass, '[class="submit"] [class="btn btn-default button button-medium"]'
        element :msg_rec_pass, ' [class="box"] p' 

        #cadastro

        element :input_email_register, '[id="email_create"]'
        element :btn_for_register, '[id="SubmitCreate"]'
        element :formulary, '[id="account-creation_form"]'
        element :btn_data_register, '[id="submitAccount"]'
        element :msg_no_register, '#center_column > div > p'
        element :msg_invalid_reg, '[id="create_account_error"]'


        def register_data()
            register.first_name_register.set Factory::Dynamic.dynamic_data[:first_name]
            register.last_name_register.set Factory::Dynamic.dynamic_data[:last_name]
            register.email_register.set Factory::Dynamic.dynamic_data[:r_email]
            register.password_register.set Factory::Dynamic.dynamic_data[:r_password]
            register.first_name_address.set Factory::Dynamic.dynamic_data[:first_name]
            register.last_name_address.set Factory::Dynamic.dynamic_data[:last_name]
            register.address_register.set Factory::Dynamic.dynamic_data[:address]
            register.city_register_address.set Factory::Dynamic.dynamic_data[:r_city]
            register.zip_code_address.set Factory::Dynamic.dynamic_data[:r_zip_code]
            register.mobile_phone_register.set Factory::Dynamic.dynamic_data[:r_mobile_phone]
            register.state_register[rand(1..50)].click
        end
    end
end