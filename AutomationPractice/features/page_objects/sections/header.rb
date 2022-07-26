module Sections 
    class Header < SitePrism::Section
        element :search_input, '[id="search_query_top"]'
        element :btn_search, '[name="submit_search"]'

        def click_and_input_text_for_search(text)
            search_input.click
            search_input.set text
            btn_search.click
        end
    end
end