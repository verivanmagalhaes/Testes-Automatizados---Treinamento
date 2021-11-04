# language: pt

  Funcionalidade: Pesquisa por produtos
    Cenario: Testando diversos produtos

      Esquema do Cenario:
        Dado que o usuario esta na pagina do google
        Quando pesquisa por <produto>
        Entao o titulo da pagina deve <titulo_obtido>

        Exemplos:
        |produto          |titulo_obtido                     |
        |"Relogio"        |"Relogio - Pesquisa Google"       |
        |"Notebook"       |"Notebook - Pesquisa Google"      |
        |"Televisão 4k"   |"Televisão 4k - Pesquisa Google"  |
        |"Smartphone"     |"Smartphone - Pesquisa Google"    |
        |"PC Gamer"       |"PC Gamer - Pesquisa Google"      |
        |"Smartwatch"     |"Smartwatch - Pesquisa Google"    |
        |"Cooktop"        |"Cooktop - Pesquisa Google"       |
        |"Coifa"          |"Coifa - Pesquisa Google"         |
        |"Forno elétrico" |"Forno elétrico - Pesquisa Google"|
        |"Macbook M1"     |"Macbook M1 - Pesquisa Google"    |



