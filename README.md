# README

## Getting started

This project supports Docker by default, so in order to set it up follow these steps:

```bash
$ git clone https://github.com/PabloVallejo/simulator.git

$ cd simulator 

# Build the project .
$ docker-compose build 

# Create the databases.
$ docker-compose run web rails db:create

# Run the project.
$ docker-compose up
```

Open another Tab and run this

```bash
# Run migrations.
$ docker exec -it visualizacioncompraspublicas_web_1 rails db:migrate

# Import providers data.
$ docker exec -it visualizacioncompraspublicas_web_1 rake importation:private_cloud_ii
```

Go to [http://localhost:3000](http://localhost:3000) and you should be able to see the project and one simulator created.
