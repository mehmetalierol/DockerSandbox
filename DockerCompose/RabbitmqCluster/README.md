Download the docker-compose.yml file to your local storage

Go to directory that contains docker-compose.yml file and than "run docker compose up -d" command in command line 

When you saw the container running inside docker desktop go each slave nodes terminal and type the below commands step by step

rabbitmqctl stop_app
rabbitmqctl reset
rabbitmqctl join_cluster rabbit@master-rabbitmq
rabbitmqctl start_app

After all you can create an additional instance of rabbitmq using the command below and than repeat the below commands for it.

docker run -d --hostname slave3-rabbitmq --name slave3-rabbitmq -l master-rabbitmq:master-rabbitmq -e RABBITMQ_ERLANG_COOKIE=47562945-1da9-4151-bbbb-2bffb1d8d7e0 -e RABBITMQ_DEFAULT_USER=admin -e RABBITMQ_DEFAULT_PASS=123456 -p 5669:5672 -p 15669:15672 rabbitmq:3-management

Its recommended to create at least 3 instances and number of instances should be odd
For more information about clustering
https://www.continuent.com/resources/blog/why-does-mysql-mariadb-cluster-require-odd-number-nodes#:~:text=The%20Short%20Answer&text=In%20order%20to%20be%20able,one%20of%20the%20network%20partitions.
