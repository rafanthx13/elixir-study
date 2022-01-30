# API JSON

Primeira app Web no Elixir com o Phoenix - Code/drops #108
https://www.youtube.com/watch?v=LGT5a8xKhS4&ab_channel=Rocketseat

## INsalar Phoneix

Além do elixri precisa executar o seguinte comando

$ mix archive.install hex phx_new

## criando o projeto

 mix phx.new muse --no-html --no-ecto

opçoes

--no-html: Sem gerar html
--no-ecto: sem conexao com BD

inslata as depdenencias

## extrutura do projeto phoenix

pasta lib é equivalaente e src

tme o nome do prpoejto e a versoa web

o phoniex é MVC

na pasta config fica coisas de ambiente e coisas restritras

deps é equivalente ao node module

_build é o builder ao starar e test para testes

## iserindo uma nova rota

get "/", MusicCntroller, :indexem 'router.ex"



scope "/api", MuseWeb do
    pipe_through :api
    # inserindo uma nova rota
	get "/", MusicController, :index
end

Significa que:
+ quermeos que ao buscar or '/' com metodo get execute o metodo chmaado index do music_controler

em `controlller` crio o arquivo `music_controller.ex`


Aquivo lib/muse_web/music_controller
````
defmodule MuseWeb.MusicController do
  
  use MuseWeb, :controller

  alias Muse.Music

  def index(conn, params) do
	conn
	|> Music.create()
	|> handle_response(conn)
  end

  # handle reponse tem 2 metodos de sobrecarga

  # caso de sucesso
  defp handle_repsonse({:ok, music}, conn) do
    conn
	|> put_status(:ok)
	|> render("create.json", music: music)
  end

  defp handle_repsonse({:error, message}, conn) do
    conn
	|> put_status(:bad_request)
	|> json(%{message: message})
  end


end
````

poderia por :ok, ou :bad_request ao invez do codigo como um numero


va em phoneix controller functins para ver tudo o que da pra fazer com a conexaion  do conn

or fim, o que agente faz é receber uma 'conn' manipualala  depois retornala

|> json(%{title: "in the end", artisti: "link park"})


 Veer um dado

IO.inspect()

## lib/muse/music.ex

Crio esse arquivo para lidar melhor com o retorno dessa api


Aqui é um exemplo de regra de negócio
````
defmodule Muse.Music do

  def create("ok") do
    {:ok, %{title: "in the end", artist: "linkind park"}}

  def create("error") do
    {:error, "error while creating music"}
  end
end

````

## lib/music_web/viwes/music_view.ex

````
defmodule MuseWeb.MusicView do
  use MuseWeb, :view

  def render("create.json", %{music: music}) do
    %{
        message: "banana",
        music: music
     }
  end
end

## esse projeto nao foi completado
