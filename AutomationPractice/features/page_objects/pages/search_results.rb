require_relative '../sections/header'
require_relative '../sections/product'

module Pages
    class SearchResults < SitePrism::Page
    set_url '/?controller=search&orderby=position&orderway=desc&search_query=submit_search='

    section :header, Sections::Header, 'div.header-container'
    sections :products, Sections::Products, 'div.product-container'
   
        def access_product_page(index)
            products[index].name.click

        end
    end
end
