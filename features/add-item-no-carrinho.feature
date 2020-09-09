#language:pt

Funcionalidade: Adicionar itens no carrinho
    Para que eu possa adicinar um produto ao carrinho
    Sendo um usuario
    Posso acessar o site da Livelo
    Fazendo as validações necessárias

    @temp
    Esquema do Cenário: Adcionando item no carrinho

        Dado que eu acesso o site da Livelo
        E Escolho um produto
        Quando Adiciono este produto no carrinho
        Entao veririco se o produto esta no carrinho <expect_produto>
        Entao Verifico a quantidade de <qtd_itens> no carrinho
        
        Exemplos:
            | expect_produto | qtd_itens |
            | "Caixa de Som Portátil Go 2 Black JBL com Bluetooth e à Prova d´Água" | "1" |