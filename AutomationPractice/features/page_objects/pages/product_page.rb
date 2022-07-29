module Pages
    class ProductPage < SitePrism::Page
        set_url'/'

        elements :colors, '.attribute_list a'
        element :mainimage, '#bigpic'
        element :newimage, '#bigpic'

        element :btn_add_cart_pdp, '[id="add_to_cart"]'
        element :btn_delete_cart, '[class="icon-trash"]'
        element :btn_checkout_cart, '[class="btn btn-default button button-medium"]'
        element :msgcartempty, '[class="alert alert-warning"]'
        element :btn_quantity_product, '[class="icon-plus"]'
        element :quantity_updated, '[id="quantity_wanted"]'
        element :msg_sucess_cart, '[class="layer_cart_product col-xs-12 col-md-6"] h2'

    
    end
end