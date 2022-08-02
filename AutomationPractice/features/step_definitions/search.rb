Dado('que esteja na Home') do
  @home_page = Pages::Home.new
  @home_page.load
end

Então('deverá ser retornado o resultado da busca escolhida') do
  @search_results_page 
  expect(@search_results_page).to have_products
  expect(@search_results_page.products.first.all_there?).to be_falsey
end

Quando('o usuário buscar pelo produto {string}') do |produto|
  @home_page.search_for(produto)
  @search_results_page = Pages::SearchResults.new
end