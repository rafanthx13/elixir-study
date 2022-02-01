# Mix Commands e Libx

Mix é como o CLI do Elixir, semelhante ao Django do Pytohn, permite criar várias coisas já prontas

## OSB de Elixir

**1**

Não se usa `-` , use `_` para nomes de aruqivos

**2**

Pramaettro que começam com `_``São opcionais. Se voce nao colocar isso, algumas vezes vai dar erro se voce nao passar esse paraemtro



## Libs

As dependencias ficam em mix.exs na parte de deps

Inserir uma nova depednecnia manualemnte

defp deps do [
	{:ex_doc, "~> 0.19.0"}
]
end

mix deps.get

## Schema de Pastas básicos

+ lib == src
+ mix.exs == package.json do mix


````
.
├── lib
│   └── new_project.ex
├── mix.exs
├── README.md
└── test
    ├── new_project_test.exs
    └── test_helper.exs
````


def module FaturaTest do
 

test "deve criar uma lista de faturas" do

## Comandos resumidos

+ mix new name-project
 - Cria novo projeto elixir
+ iex -S mix
 - Terminar interativo de elixir, se chama // iéquis
+ mix deps.get
 - equivalente ao npm i, vai ler mix.exs e pegar as dependencias que estão lá 
+ mix docs
  - desde que tenha o pacotes `ex_docs` instalado. Gera a documentaçao, uma pasta `doc` com o arquivo `index.html`
+ mix test
  - Executa testse. No Elixir, a própria documentação é o teste

## Create New project

+ mix new name-project
  - Não só cria a psta como também diversos arquivos
  - ````
* creating README.md
* creating .formatter.exs
* creating .gitignore
* creating mix.exs
* creating lib
* creating lib/new_project.ex
* creating test
* creating test/test_helper.exs
* creating test/new_project_test.exs

Your Mix project was created successfully.
You can use "mix" to compile it, test it, and more:

    cd new_project
    mix test

Run "mix help" for more commands.

````

##
