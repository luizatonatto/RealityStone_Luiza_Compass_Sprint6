
module Pages
    class Payment < SitePrism::Page
        set_url '/?id_product=5&controller=product'

        element :input_email, '[class="form-group"] #email'
        element :input_password, '[class="form-group"] #passwd'
        element :btn_login, '[id="SubmitLogin"]'
        
        element :btn_add_cart_pdp, '[id="add_to_cart"]'
        element :added_cart_pdp, '[class="layer_cart_cart col-xs-12 col-md-6"]'
        element :btn_checkout_pdp, '[class="btn btn-default button button-medium"]'
        element :checkout_summary, '[class="button btn btn-default standard-checkout button-medium"]'
        element :checkout_address, '[class="button btn btn-default button-medium"]'
        element :btn_frete, '[class="checker"]'
        element :checkout_frete, '[class="button btn btn-default standard-checkout button-medium"]'
        element :pay_by_bank, '[class="bankwire"]'
        element :pay_by_check, '[class="cheque"]'
        element :confirm_payment, '[class="button btn btn-default button-medium"]'

        def login(email,password)
            input_email.set email
            input_password.set password
            btn_login.click
         end
    end
end