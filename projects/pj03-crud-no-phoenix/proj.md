# Projeto

**criar projeot no phoenix**

```
mix phx.new bak_banck
```

**configurar o banco**

+ configure o arquivo ''
+ e depois execute o seguinte comando

```
mix ecto.create 
```

**subir a aplicação**

```
mix phx.server
```

**Gerar CRUD básico**

```
mix phx.gen.html Banks Accounts accounts number:string owner:string balance:integer
```

+ `phx.gen.html` = gerar pagina html e tudo o mais
+ `Banks` = contexto (nome do modulo)
+ `Accounts` = nome da nossa entidade que agente quer representasr
+ `accounts` = nome da tabela
+ `tabelas` = number:string owner:string balance:integer

**adicione no router**

`router.ex`

insira `resource "/accounts, AccountsCOntroller`


**execute a migration para criar a tabela no banco**

```
mix ecto.migrate
```



## Gerando Dados e somente para API JSON

```
mix phx.gen.json Banks User users name:string age:integer
```

depois rote:

```
ecto.migrate
```

e ponha o código a seguir no router par mapear a rota

```
scource "/api", BakBanckWeb do
    pipe_though(:api)
    resources("/users", UserController)
end
```

Você faz um post para `api/users` mandando no seguinte formata

```
{
"users": {"name": "gdfgd", "age": "453}
}
```

NAO É TUDO MAGIAMCENTE, VOCE TEM QUE ANALUSAR COM CALMA

