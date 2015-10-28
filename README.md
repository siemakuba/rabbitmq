# RabbitMQ example app

## Instalacja RabbitMQ
na podstawie: [http://www.rabbitmq.com/install-homebrew.html](http://www.rabbitmq.com/install-homebrew.html)

    brew update
    brew install rabbitmq


## Przygotowanie środowiska
#### Klonujemy repozytorium, odpalamy bundlera

    git clone git@github.com:siemakuba/rabbitmq.git
    bundle install


#### Konsola 1 - serwer RabbitMQ
Uruchamiamy serwer RabbitMQ. Pod adresem [http://localhost:15672](http://localhost:15672) mamy lokalny panel administracyjny.

    rabbitmq-server

#### Konsola 2 - consumer
Uruchamiamy consumer nasłuchający wiadomości przychodzących z kolejki za pomocą gema Hutch

    hutch --require consumer.rb

#### Konsola 3 - producer
Uruchamiay wysyłkę wiadomości do RabbitMQ. Korzystamy z gema Bunny, pozwalającego na łatwą komunikację z serwerem RabbitMQ.

    chmod a+x producer.rb
    ./producer.rb
