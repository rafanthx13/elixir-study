# Básico de Elixir
## linkx

https://www.tutorialspoint.com/elixir/elixir_quick_guide.htm

## Tipos

+ Inteiros
  - Suporta binários, hexa e octa
  - Ex: 255,0b0110, 0o644, 0x1F
+ Float
  - Números com '.' represnetando casa decimais e com 'e'
  - Ex: 3.14, 1.0e-10
+ Bool
  - true, false ou nil
+ String
  - Somente aspasta duplas
  - Suporta quebra de scrting com '\n' até mesmo no 'iex'
"Hello world"
  - ou odemos usar mais aspas como em python
"""
Hello
World!
"""
+ atomos
  - É equivalente a símbolo em Ruby, é uma csontante cujo nome é o seu valor. 
  - Nomes de módulos do Erlang também são atomos

## Operaçôes bścias

### Aritmaeticos

As 4 principais: +, -, *, /

A divisao
+ com '/' sempre retorna float, agora, se quiser o resto ou até mesmpo a divisao exata, tem que usar funçoes
  + dividor exato intero:  div(10,5) => 2;
  + resto inteiro da divisao:  rem(10,3) => 1

### boleanos

||, && e ! como em js (or, and, not

**em Elixir, os únicos valores falsos são nil e o booleano false.**

acesse apagina: https://www.tutorialspoint.com/elixir/elixir_quick_guide.htm

nela temsao 6 operadore,s and, or, not e os simbolos, eles funciona de orma difenrete, parece que alguns aceitas cosias que nao sejam bolean para validar e outros naoo

Elixir provides 6 logical operators: and, or, not, &&, || and !. The first three, and or not are strict Boolean operators, meaning that they expect their first argument to be a Boolean. Non Boolean argument will raise an error. While the next three, &&, || and ! are non strict, do not require us to have the first value strictly as a boolean. They work in the same way as their strict counterparts. Assume variable A holds true and variable B holds 20, then −

### comparaçao

Elixir vem com todos os operadores de comparação que estamos acostumados a usar: ==, !=, ===, !==, <=, >=, < e >.

Para comprar inteiro com inteiro e float com float, usamos 3 vezzes o '='

2 == 2.0
true
2 === 2.0
false

**OBS**: tudo é comparavel em erlang na seguinte ordem

number < atom < reference < function < port < pid < tuple < map < list < bitstring

!== é a forma negativa de  ===

### interpolar string

iex> name = "Sean"
"Hello #{name}"
"Hello Sean"

### concatenar string

A concatenação de strings usa o operador <>:

iex> 

iex> name = "Sean"
"Hello " <> name
"Hello Sean"

## Tipos compleoxs

### Listas

funcione como em python

iex> [3.14, :pie, "Apple"]
[3.14, :pie, "Apple"]

### Adicionar elementos ana lsita

Elixir percorre  lista na forma O(n), entao, para otimizaço, desdeque nao se importe com a ordme, é melohr adicionar elementos no inicio da lista

````
iex> list = [3.14, :pie, "Apple"]
[3.14, :pie, "Apple"]

# Prepending (rápido)
iex> ["π" | list]

["π", 3.14, :pie, "Apple"]
# Appending (lento)
iex> list ++ ["Cherry"]
[3.14, :pie, "Apple", "Cherry"]
````

### Concatenar listas

iex> [1, 2] ++ [3, 4, 1]
[1, 2, 3, 4, 1]



### Retirar elemetnos

iex> ["foo", :bar, 42] -- [42, "bar"]
["foo", :bar]

Elementos repetidos na hora de retirar
+ todo elmento da direita será removido da esqueda

iex> [1,2,2,3,2,3] -- [1,2,3,2]
[2, 3]

remove estritamente de acordo com a tipagem


iex> [2] -- [2.0]
[2]
iex> [2.0] -- [2.0]
[]

### head e tail da lista

topo (hd) e calda (tl) da lsita
iex> hd [3.14, :pie, "Apple"]
3.14
iex> tl [3.14, :pie, "Apple"]
[:pie, "Apple"]


### Tuplas

diferente de python e jasvascript a tupla é feita em '{}'

iex> {3.14, :pie, "Apple"}
{3.14, :pie, "Apple"}

### Keyword lists

Equivale ao dicionario em python, mas em Elixir é uma lsita feita da seguinte forma

````
iex> [foo: "bar", hello: "world"]
[foo: "bar", hello: "world"]
````

Na verdae uma keyword list é uma lista de tuplas, onde o 1 elemtno de cada tupla é um atomo e o segundo é o valor

````
iex> [{:foo, "bar"}, {:hello, "world"}]
[foo: "bar", hello: "world"]
````

As três características relevantes das listas de palavras-chave são:

+ As chaves são átomos.
+ As chaves estão ordenadas.
+ As chaves não são únicas.

Por essas razões as listas de palavras-chave são frequentemente usadas para passar opções a funções.

My OBS: Não é o tipo que usamos como dict

### Maps

É o tipo que uysamos como dict, mas é mais enjoado que python

Sua sintaxe é com  %{}

Perceba que qualquer coisa pode ser uma key

````
// cria mapa
iex> map = %{:foo => "bar", "hello" => :world}
%{:foo => "bar", "hello" => :world}
// acessandpo mapa
iex> map[:foo]
"bar"
iex> map["hello"]
:world
````

até mesmo uma variavel pode ser a chcave, no caso, a key real do map sera o seu valor 

````
iex> key = "hello"
"hello"
iex> %{key => "world"}
%{"hello" => "world"}
````

Obsevaçoes
+ Se um elemento duplicado é inserido no mapa, este sobrescreverá o valor anterior;

**Outra sintaxe mais fácil para maps**

````
iex> %{foo: "bar", hello: "world"}
%{foo: "bar", hello: "world"}
iex> %{foo: "bar", hello: "world"} == %{:foo => "bar", :hello => "world"}
true
````

### Acessando elemtnos

iex> map = %{foo: "bar", hello: "world"}
%{foo: "bar", hello: "world"}
iex> map.hello
"world"

nao serve para inserir um novo elemento, se tentar fazer essa atualizarçao e nao exisitr a chave, vai dar eerro


### atualizar

iex> map = %{foo: "bar", hello: "world"}
%{foo: "bar", hello: "world"}
iex> %{map | foo: "baz"}
%{foo: "baz", hello: "world"}

### inserir nova chave

iex> map = %{hello: "world"}
%{hello: "world"}
// da erro
iex> %{map | foo: "baz"}
** (KeyError) key :foo not found in: %{hello: "world"}
    (stdlib) :maps.update(:foo, "baz", %{hello: "world"})
    (stdlib) erl_eval.erl:259: anonymous fn/2 in :erl_eval.expr/5
    (stdlib) lists.erl:1263: :lists.foldl/3
// forma crorrta
iex> Map.put(map, :foo, "baz")
%{foo: "baz", hello: "world"}

## Módulo Enum : faciliatador

Com o modeulo enum podemos aplicar funçoes que agilizam nossa vida, como em JS e Python, o que nao tme em lingaugem C

https://elixirschool.com/pt/lessons/basics/enum

Há cerca de 70 mas aqui so vou colcaor algumas

Sâo elas:
+ all?
  - Eplica uma cond a cada elemnto, se todas derem true, retorna true, senao, false
     *  Ex: Enum.all?(["foo", "bar", "hello"], fn(s) -> String.length(s) > 1 end)
      *true
+ chunk_every
  - divide lista em 2, 2 ou 3,3 ou 4,4
+ chunk_by
  - agrupa em sublsitas de acordo com algum calculo, cada elemnto que tivfer o mesmo resultado é agrupadao
    * iex> Enum.chunk_by(["one", "two", "three", "four", "five"], fn(x) -> String.length(x) end)
    * [["one", "two"], ["three"], ["four", "five"]]
   
+ any?
+ each
+ map
+ min
+ max
+ filter
+ reduce
+ sort
+ uniq

### Funçao anonima e operador capture (&)

a funçao anonima seria o lambda ou a arrow function do js.

Em elixr a funaçao anonima é feita com:
iex> Enum.map([1,2,3], fn number -> number + 3 end) 
> [4,5,6]

A mesmac osia usando capture

iex> Enum.map([1,2,3], &(&1 + 3))
[4, 5, 6]


