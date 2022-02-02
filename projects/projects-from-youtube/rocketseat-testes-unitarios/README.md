# Teste unitários no Elixir - ExUnit

https://www.youtube.com/watch?v=c6tSDjj7VNM&ab_channel=Rocketseat

## ExUnit

Se chama exUnit (equis-i-uniti)

Por default, o elixir já vem com exUnit junto, entao nâo é uma dependdica separa que voce coloca

Para rodar mix test, é preciso ter o `test_helper.exs` com `ExUnit.start()` que roda a suite de test

Todo arquivo de test deve ter o `_test` no fim do seu nome e é `.exs` o `s` é de script

## Criar o projeto

criar
$ mix new coffer

exceutar testse
$ mix test

## test/coffer_test.exs

ele vem asism por default

````
defmodule CofferTest do
  use ExUnit.Case
  doctest Coffer

  test "greets the world" do
    assert Coffer.hello() == :world
  end
end
````

Observaçoes
+ O arquivo de teste é o mesmo nome com `Test` em seguida

````
defmodule CofferTest do 
  use ExUnit.Case

  // setupd globa
  // EU posos mover esse setups para dentro de cada describe e assim, ter um setup local
  setup do
	id = 28
    coffe = 
  end

  describe "create/1" do

    test "when all params are valida, returns a succesfull repsonse"
       params = %{kind: arabica, brand: "Banna COffe", type: :grao}
       response = Coffer.create(prams)
       # asset response == expected_response
	   # ao invez de igualdade uso pattern mathins para ver se combina
       # id tem '_' porque asism vai pegar qualquer id, já que o id é alaertoirio, nao
	   assert {:ok, %{id: _id, message: "Coffe created", satus: :ok}} = reponse

test "when there are invalid params returns error"
       params = %{kind: :batatainhaError, brand: "Banna COffe", type: :grao}
       expecetd_repsonse = {:error, %{message: "Invalid params", status: :bad_request}}
       response = Coffer.create(prams)
    
	   assert reponse == expected_response



````

## lib/coffer.ex

Vamos colocar  o nosso codigo, sera um exmeplo de uma api simples. haavera sucesso se voce passar 3 pararametros que kind e type seja os mesmso já especificados

````
defmodule Coffer do
  @kinds [:arabica, :conilon]
  @types [:grao, :moido, :soluvel]

  @fake_coffe %{
	kind: :conilon,
	brand: "Bannana COffe",
	type: :moido,
	id: 28
  }

  // suceso
  def create(%{kind: kind, brand: _brand, type: type})
      when type in @types and kind in @kinds do
    {:ok, %{message: "Coffe created", id: Enum.random(0..100)}}

  def create(_params) do
    {:error, %{message: "Invalid params", status: :bad_request}}
  end

  def delete("28") do
	{:ok, %{message: "Coffe Deleted", status: :ok, coffe: @fake_coffe}}
  end

  def delete(_id) do
	{:error, %{message: "Coffe not found", status: :not_found}}
  end

def get("28") do
	{:ok, %{status: :ok, coffe: @fake_coffe}}
  end

  def get(_id) do
	{:error, %{message: "Coffe not found", status: :not_found}}
  end

end
````


