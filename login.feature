            #laguage: pt

            Funcionalidade: Login
            Como cliente da EBAC-SHOP
            Quero fazer o autenticação na plataforma
            Para visualizar meus pedidos

            Esquema do Cenário: Autenticar usuários
            Dado que o usuário acesse a página de login da plataforma
            Quando o usuário digitar <usuario> e <senha>
            Então deve exibir a <mensagem>

            Exemplos:
            | usuario          | senha        | mensagem                     |
            | "dany@gmail.com" | "teste123@!" | "Olá Dany"                   |
            | "1234@gmail.com" | "teste123@!" | "Usuário inválido"           |
            | "dany@gmail.com" | "1234"       | "Usuário com senha inválida" |