            #language: pt

            Funcionalidade: Configuração de produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu acesse a página de configurar o produto

            Cenário: Limpar seleção
            Quando eu clicar em "limpar"
            Então as seleções devem voltar ao estado original

            Cenário: Configuração de produto
            Quando eu selecionar <cor>
            E eu selecionar <tamanho>
            E eu selecionar <quantidade>
            Então o resultado deve ser <mensagem>

            Esquema do Cenário: Configuração de produto
            | "Azul"     | "XS" | 2  | "Produto adicionado ao carrinho"                             |
            | ""         | "XS" | 2  | "Seleção de cor é obrigatória"                               |
            | "Vermelho" | ""   | 2  | "Seleção de tamanho é obrigatória"                           |
            | "Azul"     | "XS" | 0  | "Quantidade de itens é obrigatória"                          |
            | "Azul"     | "XS" | 11 | "A quantidade de itens selecionada deve ser de até 10 itens" |

