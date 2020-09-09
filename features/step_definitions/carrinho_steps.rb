include Capybara::DSL

Dado("que eu acesso o site da Livelo") do
  @login = CarrinhoPage.new
  @login.go #acessa a pagina Livelo
end

Dado("Escolho um produto") do
  @login.product #clica no produto escolhido
end

Quando("Adiciono este produto no carrinho") do  
  @login.addButton #clica no botão "Adcionar ao Carrinho"
end
  
Entao('veririco se o produto esta no carrinho {string}') do |expect_produto|
  @validaView = ItensCarView.new
  @validaView.itens_car #verifica se esta no carrinho
  expect(@validaView.item_name).to eql expect_produto #compara se o produto é o esperado
end

Entao('Verifico a quantidade de {string} no carrinho') do |qtd_itens|
  expect(@validaView.item_qtd).to eql qtd_itens #compara se a quantida é a esperada
end