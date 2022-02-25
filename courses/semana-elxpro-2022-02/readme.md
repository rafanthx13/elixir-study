👉 Quer aprender mais sobre Elixir? Esses links podem ser úteis:

 ✅ Criando API rest em segundos [https://www.youtube.com/watch?v=zc5Um...](https://www.youtube.com/watch?v=zc5UmQ1dI4o&t=0s)

 ✅ O passo a passo para construir uma Loja online com GraphQl e Elixir do zero  [https://www.youtube.com/watch?v=L-YIy...](https://www.youtube.com/watch?v=L-YIylRXRFU&t=0s) 

✅ A TÉCNICA para criar AUTENTICAÇÃO com APIS em ELIXIR de maneira RÁPIDA [https://www.youtube.com/watch?v=PmshX...](https://www.youtube.com/watch?v=PmshXMxfIfs&t=0s) ✅ Essa é uma das coisas mais incríveis que você vai ver hoje / Realtime Liveview, Broadway e Kafka [https://www.youtube.com/watch?v=m1Znl...](https://www.youtube.com/watch?v=m1ZnlR0-_t0&t=0s) 

✅ Elixir e OTP o minimo que voce precisa saber [https://www.youtube.com/watch?v=oq5JC...](https://www.youtube.com/watch?v=oq5JCe6Rg-Q&t=0s) 

✅ NUNCA cometa ESSES erros ao começar a trabalhar como PROGRAMADOR ELIXIR no EXTERIOR [https://www.youtube.com/watch?v=Q_aqL...](https://www.youtube.com/watch?v=Q_aqLXtrvRE&t=0s) 



### Instalar HydraQL

INfelismnete só tem disponivel para phoenix 1.5 e a versao mais recente é 1.6

instalr phoenix 1.5

```
mix archive.install hex phx_new 1.5.13
```

Depois execute a seguir

```
mix phx.new hydra --binary-id --no-html --no-webpack --no-dashboard
```

No peojteo adicione as sguinte dependencias

```
{:credo, "~> 1.5", only: [:dev, :test], runtime: false}, # Analise de Codigo
{:excoveralls, "~> 0.10", only: :test}, # Cobertura de Testes
{:mix_test_watch, "~> 1.0", only: :dev}, # TDD
{:absinthe, "~> 1.6"}, #GraphQl
{:absinthe_relay, "~> 1.5", override: true},
#https://relay.dev construir apps escalaveis
{:absinthe_plug, "~> 1.5", override: true},
{:absinthe_phoenix, "~> 2.0"}, #utilizar com websockets
{:absinthe_error_payload, "~> 1.1"}, #lidar com erros de maneira Simples
{:dataloader, "~> 1.0.0"}, #lidar com queries de banco de dados
{:mock, "~> 0.3.0", only: :test}, # para mocar dados,
{:brod, "~> 3.15"}, # mandar para msg_broker (produzir)
{:broadway, "~> 1.0"}, # receber de msg_brooker (consumir)
{:broadway_kafka, "~> 0.3.0"} # definir que o msg_brokert é o kafka
```

Abaixo de

```
{:plug_cowboy, "~> 2.0"}
...
```

e deposi

```
mix deps.get
```

Deve fundionar desde que esteja em phoneix.1.5

**Script de credo**

na razi crie o arquivo `.credo.exs` e coloque o seguinte codigo>:

```
#.credo.exs
%{
configs: [
%{
name: "default",
files: %{
included: ~w{config lib test}
},
strict: true,
color: true,
checks: [
# https://hexdocs.pm/credo/1.4.0/config_file.html
{Credo.Check.Readability.ModuleDoc, false},
{Credo.Check.Readability.MaxLineLength, max_length: 100},
{Credo.Check.Consistency.TabsOrSpaces},
{Credo.Check.Readability.MaxLineLength, priority: :low, max_length: 100},
{Credo.Check.Design.TagTODO, exit_status: 2},
{Credo.Check.Refactor.MapInto, false},
{Credo.Check.Warning.LazyLogging, false}
]
}
]
}
```

**Script em mix.exs para fazer testes**

```
test_coverage: [tool: ExCoveralls],
preferred_cli_env: [
coveralls: :test,
"coveralls.detail": :test,
"coveralls.post": :test,
"coveralls.html": :test
]
```

na parte de 

```
def project do
[
...
]
end
```

**Executar o credo**

```
 mix credo --strict
```

Ele vai analisar tervcos de codigo que podem ser melhorados



**ff**

```
mix coveralls.html
```

