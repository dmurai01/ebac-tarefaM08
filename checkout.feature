#language: pt

Funcionalidade: Tela de cadastro
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro   
Para finalizar minha compra

Contexto:
Dado que eu acesse a página de Checkout

Esquema do Cenário: Checkout válido
Quando eu preencher <nome>, <sobrenome>, <empresa>, <pais>, <endereco>, <complemento>, <cidade>, <estado>, <cep>, <telefone> e <email>
Então deve exibir a <mensagem>

Exemplos:
|nome|sobrenome|empresa|pais|endereco|complemento|cidade|estado|cep|telefone|email|mensagem|
|"Dani"|"da Silva"|"Loja 123"|"Brasil"|"R. Teste, 123"|"subsolo"|"São Paulo"|"São Paulo"|"01234-000"|"11 9999-9999"|"dani@teste.com"|"Compra finalizada com sucesso"|
|"Dani"|"da Silva"|""|"Brasil"|"R. Teste, 123"|""|"São Paulo"|"São Paulo"|"01234-000"|"11 9999-9999"|"teste.com"|"Formato de email inválido"|
|"Maria"|"da Silva"|""|"Brasil"|"R. Agosto, 123"|""|"São Paulo"|""|"01234-000"|"11 9999-9999"|"dani@teste.com"|"Compra finalizada com sucesso"|
|""|"da Silva"|"Loja 123"|"Brasil"|"R. Teste, 123"|"subsolo"|"São Paulo"|"São Paulo"|"01234-000"|"11 9999-9999"|"dani@teste.com"|"Campo nome é obrigatório"|
|"Dani"|""|"Loja 123"|"Brasil"|"R. Teste, 123"|"subsolo"|"São Paulo"|"São Paulo"|"01234-000"|"11 9999-9999"|"dani@teste.com"|"Campo sobrenome é obrigatório"|
|"Dani"|"da Silva"|""|""|"R. Teste, 123"|"subsolo"|"São Paulo"|"São Paulo"|"01234-000"|"11 9999-9999"|"dani@teste.com"|"Selecionar País é obrigatório"|
|"Dani"|"da Silva"|""|"Brasil"|"R. Teste, 123"|""|""|"São Paulo"|"01234-000"|"11 9999-9999"|"dani@teste.com"|"Campo Cidade é obrigatório"|
|"Dani"|"da Silva"|""|"Brasil"|"R. Teste, 123"|""|"São Paulo"|"São Paulo"|""|"11 9999-9999"|"dani@teste.com"|"Campo CEP é obrigatório"|
|"Dani"|"da Silva"|""|"Brasil"|"R. Teste, 123"|""|"São Paulo"|"São Paulo"|"01234-000"|""|"dani@teste.com"|"Campo telefone é obrigatório"|
|"Dani"|"da Silva"|""|"Brasil"|"R. Teste, 123"|""|"São Paulo"|"São Paulo"|"01234-000"|"11 9999-9999"|""|"Campo email é obrigatório"|
