module Sections
    class Products <SitePrism::Section
        element :name, 'a.product-name'
        element :price, 'span.price.product-price'
        element :image, 'div.product-image-container'
        element :name_home, '[class="product_list grid row homefeatured tab-pane active"] [class="product-name"]'
        element :cart_float, '//*[@id="header"]/div[3]/div/div/div[3]/div/a'
    end
end

