class ItensCarView
    include Capybara::DSL

    def itens_car
        find("#CC-cart-list", text: "Seu carrinho").visible? #Verifica se esta no carrinho
    end

    def item_name
        find(".cart-list__prodinfo .cart-list__subtitle").text #Pega a informação do produto
    end

    def item_qtd
        find(".cart-list__prodquantity .cart-list__value-qnt").text
    end
    
end