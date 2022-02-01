# 01 - Passo a passo do básico a primeira documentação

Tempo: 01h39m52s || Quantidade de Vídeos 15

## 1. Introduction (10m46s)

A instalaçâo do Elixir é muito simples, é só ir no site e pronto

$ mix new name-project

````
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

Apague o conteudo de lib/new_project.ex

**Como criar um módulo no elixir**

````
defmodule aModule do
  
end
````

**Como criar uma função no Elixir**

````
def afunction do
  
end
````

**Coisas que precisa saber do elixir**
+ 1 - Não precisa colocar `return`, como é programaçâo funcional, está implícito que tem return
+ 2 - Se a função não tem parâmetro nâo precisa colocar

**Terminal interativo**
+ iex -S mix
 - Execute na pasta raiz, você será capaz de executar os módulos do exliri
 - É uma forma de executaar a aplicaçâo mais rapido e diretamente
 - Fatura.hello
  -> output "hello world"
 - Se voce mudar algo, tem que sair e voltar; Para nâo fazer isso use o comando `recompile`


## 2. Comparando OO com Funcional. (03m54s)

A difeernça entre os 2 paradigams, pulei.

Diferetne de OO em Funcionala agente sem re cria algo novo. Manter estado nâo é muito indiado


## 3. Argumentos no Elixir e Enum.Sort (07m58s)

Nosso arqguivo fatura.ex

````
defmodule Fatura do
  def hello do
    [1, 2, 3]
  end

  def criar_fatura do
    ["Agua", "Luz", "Telefone"]
  end

  def ordenar_fatura(fatura) do
    Enum.sort(faturas)
  end
end
````


## 4. Gerenciamento de Dependencias e Documentação de código (03m57s)

Insira a dependência `ex_doc`: `{:ex_doc, "~> 0.19.0"}`

$ mix deps.get


$ mix docs

vai gerrar a pasta `doc` que tem o arquivo `index.html`



## 5. Documentação como Testes (07m10s)

documentar dunçao

````
@doc """
  Begins here the documentation
  ## Exemplos
  iex> Fatura.criar_fatura(["Telefone", "Agua", "Luz"])
  ["Telefone", "Agua", "Luz"]
"""
def ...
````
documentar o modulo

````
defmodule Fatura do

	@moduledoc """

	"""

````

**A PRÓPRIA DOCUMENTAÇÃO DAS FUNÇÕES É O TESTE**


## 6. Testes unitários (06m28s)

Teste unitários sâo feitos nos arquivos da pasta `test`

em test/fatura.exs

````
defmodule FaturaTest do
  use ExUnit.Case
  doctest Fatura

  test "deve criar uma lista de faturas" do
    faturas = Fatura.criar_fatura(["Agua", "Telefone", "Luz"])
    assert faturas == ["Agua", "Telefone", "Luz"]
  end

  test "deve ordenar uma lista de faturas" do
    faturas = Fatura.criar_fatura(["Agua", "Telefone", "Luz"])
    refute Fatura.ordena_fatura(faturas) == ["Agua", "Telefone", "Luz"]
  end

end
````

Analisando o codigo
+ o refute é o inverso do assert

E a fatura.ex da lib vai ficar

````
defmodule Fatura do

  @moduledoc """
    Este módulo executamos funções de faturas
  """
  
  @doc """
    Ao receber `fatura` retorna um array de faturas
      ## Exemplos
      iex> Fatura.criar_fatura(["Telefone", "Agua", "Luz"])
      ["Telefone", "Agua", "Luz"]
  """
  def criar_fatura(fatura) do
   fatura
  end

  @doc """
    Ao receber `fatura` retorna um array de faturas ordenado
      ## Exemplos
      iex> Fatura.ordena_fatura(Fatura.criar_fatura(["Telefone", "Agua", "Luz"]))
      ["Agua", "Luz", "Telefone"]
  """
  def ordena_fatura(faturas) do
    Enum.sort(faturas)
  end

  @doc """
    Ao receber `faturas` e um elemento de `fatura` retorna se existe ou não
      ## Exemplos
      iex> Fatura.fatura_existe?(Fatura.criar_fatura(["Telefone", "Agua", "Luz"]), "Luz")
      true
  """
  def fatura_existe?(faturas, fatura) do
    Enum.member?(faturas, fatura)
  end

  
end
````



## 7. Buscando uma fatura (07m20s)

adicionamos a seguinte furnaçao em lib/fatura.ex

````
@doc """
    Ao receber `faturas` e um elemento de `fatura` retorna se existe ou não
      ## Exemplos
      iex> Fatura.fatura_existe?(Fatura.criar_fatura(["Telefone", "Agua", "Luz"]), "Luz")
      true
  """
  def fatura_existe?(faturas, fatura) do
    Enum.member?(faturas, fatura)
  end
````

**OBS**
+ Esse sinal de `?` é apenas uma convesão para agnete saber que o retorno é true/false



## 8. Percorrendo uma lista (06m36s)

Vmaos modificar criar_fatura para percorre uma lista

lib/fatura.ex

````
@doc """
    Ao receber `fatura` retorna um array de faturas
      ## Exemplos
      iex> Fatura.criar_faturas(["Telefone", "Agua"], [5, 10])
      ["Telefone", "Agua"]
  """
  def criar_faturas(faturas, vencimentos) do
    for vencimento <- vencimentos, fatura <- faturas do
      "Fatura: #{fatura} vence no dia: #{vencimento}"
    end
  end

````



## 9. Percorrendo uma lista, Flatten, String template (08m38s)

O mesmo que o anterior


## 10. A importância de usar Tuplas (03m26s)

Usar Enum.split : ele pede a lista e a quantidade, vai gerar uma tupla

````
def faturas_a_pagar(faturas, quantidade) do
    Enum.split(faturas, quantidade)
  end
````



## 11. Pattern Matchings (05m21s)

Pattern Matchings


No iex excute o código a seguir

````
faturas = Fatura.criar_fatura(["telefone", "water", "luz"])
{a_pagar, restante_contas} = Fatura.faturas_a_pagar(faturas,1)
````

Quando eu faço `Fatura.faturas_a_pagar(faturas,1)` eu divido uma tupla de 2 elmentos.

O **Pater Mathings é como o desconcstructor do JAVA-SCRIPT**



````
def pagar_faturas(faturas, vencimento, quantidade) do
    criar_faturas(faturas, vencimento)
    |> ordena_fatura
    |> faturas_a_pagar(quantidade)
  end
````



## 12. Gravando os dados em um Arquivo (10m03s)

````
def save(nome_arquivo, faturas) do
    binary = :erlang.term_to_binary(faturas)
    File.write(nome_arquivo, binary)
  end
````


## 13. Recuperando arquivos (05m36s)

````
def load(nome_arquivo) do
    case File.read(nome_arquivo) do 
      {:ok, binario }  -> :erlang.binary_to_term binario
      {:error, _erro} -> "Não foi possivel carregar o nosso arquivo"
    end
  end
````
load`
## 14. Case statement (07m16s)

O case já está expresso em `load`


## 15. Operador Pipe (05m23s)

é o `pagar_faturas`

````
def pagar_faturas(faturas, vencimento, quantidade) do
    criar_faturas(faturas, vencimento)
    |> ordena_fatura
    |> faturas_a_pagar(quantidade)
  end
````

