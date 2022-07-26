require_relative '../sections/header'

module Pages
    class Home < SitePrism::Page
        set_url '/'

        section :header, Sections::Header , 'div.header-container' 
        element :add_cart_home, '//*[@id="homefeatured"]/li[1]/div/div[2]/div[2]/a[1]'
        element :checkout_home, '[class="btn btn-default button button-medium"]'

        def search_for(product)
            header.click_and_input_text_for_search(product)
        end
    end
end