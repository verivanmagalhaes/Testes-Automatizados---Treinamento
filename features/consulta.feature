# language: pt

  Funcionalidade: Pesquisa por produtos
    Cenario: Testando diversos produtos

      Esquema do Cenario:
        Dado que o usuario esta na pagina do google
        Quando pesquisa por <produto>
        Entao o titulo da pagina deve <titulo_obtido>

        Exemplos:
        |produto          |titulo_obtido               |
        |"Caderno"        |"Caderno - Pesquisa Google" |
        |"Lapis"          |"Lapis - Pesquisa Google"   |
        |"Caneta"         |"Caneta - Pesquisa Google"  |
        |"Escola"         |"Escola - Pesquisa Google"  |
        |"Livros"         |"Livros - Pesquisa Google"  |
        |"Tablet"         |"Tablet - Pesquisa Google"  |
        |"Mesa"           |"Mesa - Pesquisa Google"    |
        |"Cadeira"        |"Cadeira - Pesquisa Google" |
        |"Sofa"           |"Sofa - Pesquisa Google"    |
        |"Fogao"          |"Fogao - Pesquisa Google"   |



