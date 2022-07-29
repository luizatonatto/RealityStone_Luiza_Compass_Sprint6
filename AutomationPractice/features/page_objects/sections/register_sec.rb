module Sections
    class Register < SitePrism::Section
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
        elements :state_register, '[id="uniform-id_state"] [value]'
    end
end