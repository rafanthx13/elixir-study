# instalr hex e phoenix
Hex package manage é o npm do eixir

isntalar hex

mix local.hex

instalar phoenix

mix archive.install hex phx_new

The phx.new generator is now available to generate new applications in the next guide, called Up and Running. The flags mentioned below are command line options to the generator; see all available options by calling mix help phx.new.

mix phx.new reg_user

nâo pode usar '-'

nislae as deepdnencias

vai aparecer algo como

````
We are almost there! The following steps are missing:

    $ cd reg_user

Then configure your database in config/dev.exs and run:

    $ mix ecto.create

Start your Phoenix app with:

    $ mix phx.server

You can also run your app inside IEx (Interactive Elixir) as:

    $ iex -S mix phx.server
````

## COntinuando

acesse o arquivo config/dev.exs e configurar as credenciasi par ao banco de dados

em seguida execute

mix ecto.create

execute esse comando dentro da pasta

depois executa o server

mix phx.serve

## Criando Dado

mix phx.gen.html Users User users name:string email:string description:text

isso vai criar o controller e tudo o mais

depois configura uma rota e sem seguida o migrate

vai na pasta lib/router.ex e na  parte que tm scope "/", RegUserWeb do

adicione a linha

resources "/users", UserController

para assim, qualquer coisa dessa rota ser controlada pelo controller

usando o migrate vai persistir essa alteaaçoes no nosso baco de dados

mix ecto.migrate

## execuarta server

mix phx.server

o mais interressante é que, vai gera uma pagina html automaticamente nos aruqivos `.exx` e todos os arquivos sao estaticos, ou sejam podemos ir lá nos arquvios e até mesmo traduzir manulaemnte.

arquivos `.exx` sao na verdade hmtl separados como pomonentes

Ao exutura phx.server deve aparecer

[info] Access RegUserWeb.Endpoint at http://localhost:4000
[watch] build finished, watching for changes...

por default vai na prta 4000

## O que é interressante

O phoneix nâo só cria as urls (ou seja, a parte da api) como tambem as paginas web, parecendo asism como o laravel/django da vida
