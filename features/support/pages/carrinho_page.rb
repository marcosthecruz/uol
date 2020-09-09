class CarrinhoPage
    include Capybara::DSL

    def go
        visit "/"
    end

    def product
        find(".product__image [title^=Caixa]").click
    end

    def addButton
        click_button "Adicionar ao carrinho"
    end
end