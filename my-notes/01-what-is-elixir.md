 criado por José Valim em 2012 na empresa palataformaTec.

Ele estava desenvolvendo no RIals e percebeu boas coisa no Earlang (pra se ter uma ideia, o ZapZap tem essa eficeintea pelo Earlang).

Mesmo que o Ealng fosse boma para lidar com comp. distribuida, deixava a desejar em outros pontos 

Assim nasceu elixir (êliquisi) rodando na VM do EARLANG

Ela tem muita perfomence, e é produtiva.

Ela tem um grande ecossitemas e várias ferramentas

mix: gerenciar e criar projetos
hex: npm do elixir
exUnit: teste unitarios
IEx: Elixir interactive shell

prncipais framweokw
+ phoneix: DevWeb e API
+ Nerves: serve para IoT e Embedded
+ PLug e Sugar para tambem o web

## Prgoramaçao funcinal

Na pratica a maior diferença de python e JS será que tudo deve ser feito dentro de funções.

Alem disso, os metodo costumam nao ter metodos internos como em python tme por exemplo variable.sort();

EM gerla, tudo será uama funçâo aflicada a outra

ao invez de var.map será map(var)

## Youtube - Rocket Seat

https://www.youtube.com/watch?v=Q4z8rgSt-AU&list=WL&index=3&t=8s&ab_channel=Rocketseat

COMEÇANDO NO ELIXIR EM 2022

**Vale a pena**: Já está consolidado como uma lingaugem válida para trabalho.

**Vantagesn**:
+ Escaĺave e tolerante a flaha (ou seja, ideal para trabalahr com alta demanda como streming)
+ Paga Bem: Está pagando bem na Europa; No Stack Overfalow, é uma das lingaugesn que mais paga bem
+ Produtiva; MOderna; Extensível; Madura; Possui uma ótima comunidade

**Road Map para estudar Elixir**

+ Elixir Core
  - Fundamentos do Elixir: Sintaxe, tipos, Patter matchsing, pipe operator e eimutabilidade
  - Estruturas de dados: lista, tupla, map e operaçoes
  - Structcs: Fundamentais para envelopar os dados
  - Módulo Enum: na programaço funcional nao tem for, mas, atravez do enum agente será capas de manipular bem os nossos dados sem precisar usar recursividade que seria a maneira normal para progrmaaçao funcional
  - Estrututas de controle
  - TesteUnitários: ExUnit

+ Phoenix Web - Core
  - Phoenix básico
  - Ecto Básico
  - Aprender a criar API CRUD JSON
  - Request exten
  - Testes unitários
  - Deploy
  - CI/CD

+ Tópicos avançado  - EXLIR CORE
  - Task: concorrencia no elixir, multi-thead
  - GenServers: Servidores genéricos. Conceito chave para manter um processo por um longo periodo de tempo em uma linguagem funcional

+ Tópicos avançado  Phoenix Core
  - Plugs: Blocos plugáveis e fazer transformações no request de forma prática
  - Autenticação
  - Channels (WebSockets): Real-Time em Phoenix

Até aqui a rocket seat cobre

Vale a pena estudar
+ Elixir distribuido
+ DockTest e TypeSpecs
+ MetaProgramação
+ Phoenix LiveView: Aplicações front-end completamente dinamica sem usar JavaScript. Muito usado lá fora

Extras (algumas vao usasr esea libs)
+ Graphql: a lib Abyssint do elixir
+ ExQ ou Oba: LIb para lidar com jobs (tarefas em background, cron)
+ Brodway: Lib para ingestão de dados
+ Kafka: ldiar com micro-serviços

## Youtube - RocketSeat - Retrospectiva Elixir 2021

As princiapsi noticias no elixri sobre nesse ano
+ 10 anos do elixir: 24 maio de 2012: foi o 1 commit da linguagem
 elixir
+ enex: surgimento de lib para lidar com tensores: lidar com machine learning
+ liveBook : forma de voce criar notas interativas enquanto programa com elixir: ou seja, um jupyter notebook do elixir
  => No ubnut :~/.mix/escripts$ ./livebook server 
  => Markdown é rederizada automaticamente, algo que o jnotebook nao faz
  => é permitido que duas pessoa fiquem no mesmo arquivo por colaboração
+ Fly.io : Permite fazer deploy do elixir, criada pelo mesmo cara que criou o phoenix
+ Video mais visto de 2021: Diga adeus ao IF/ELSE com elixir
+ liveView: crir aplicaçao fornt-end sem java-script
+

COmo acompanhar as novidades do elixir


https://www.youtube.com/watch?v=xWKRXJ7b9Lw&t=0s
