# Simple Front-Web-App - Hex and Phoenix

## Hex e Phoenix

Hex package manage é o npm do eixir

Para instalar hex

```sh
mix local.hex
```

instalar phoenix

```
mix archive.install hex phx_new
```

The phx.new generator is now available to generate new applications in the next guide, called Up and Running. The flags mentioned below are command line options to the generator; see all available options by calling mix help phx.new.

Criar projeto phoneix

```
mix phx.new reg_user
```

OBS: nâo pode usar '-' nos nomes dos proejtos

Após instalar as deepdnencias vai aparecer algo como

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

acesse o arquivo `config/dev.exs` e configurar as credenciasi par ao banco de dados (ecto é a lib que liga ao BD)

Insira as crednciais (por default, é para postgre) e em seguida execute

```
mix ecto.create
```

Vai testar a conexão ao banco de dados e já criar algumas tabelas

execute esse comando na raiz do projeto server

```
mix phx.serve
```



## Criando Dados

Execute o seguinte comando

```
mix phx.gen.html Users User users name:string email:string description:text
```

isso vai criar o controller e tudo o mais para a entidade User, elém de criála no bacno de dados

depois configura uma rota e sem seguida o migrate

vai na pasta `lib/router.ex` e na  parte que tm scope "/", RegUserWeb do

adicione a linha

```
resources "/users", UserController
```

Para assim, qualquer coisa dessa rota ser controlada pelo controller

usando o migrate vai persistir essa alteaaçoes no nosso baco de dados

```
mix ecto.migrate
```



## executar server

```
mix phx.server
```

o mais interressante é que, vai gera uma pagina html automaticamente nos arquivos `.exx` e todos os arquivos sao estaticos, ou sejam podemos ir lá nos arquvios e até mesmo traduzir manulaemnte.

arquivos `.exx` sao na verdade hmtl separados como componentes

Ao exutura `phx.server` deve aparecer

```
[info] Access RegUserWeb.Endpoint at http://localhost:4000
[watch] build finished, watching for changes...
```

Por default a aplicação é subida vai na porta 4000

## O que é interressante

O phoneix nâo só cria as urls (ou seja, a parte da api) como tambem as paginas web, parecendo asism como o laravel/django 
