# README

## Getting started

This project supports Docker by default, so in order to set it up follow these steps:

```bash
$ git clone https://github.com/PabloVallejo/simulator.git

$ cd simulator 

# Build the project.
$ docker-compose build 

# Run it.
$ docker-compose up 
```

Open another tab and change directory to the project directory, then run:

```bash
# Create the database.
$ docker-compose run web rails db:create

# Create database tables.
$ docker-compose run web rails db:migrate

# Create default database structures.
$ docker-compose run web rails db:seed

# Import cloud configuration options.
$ docker-compose run web rake importation:private_cloud_ii_options

# Import cloud option prices.
$ docker-compose run web rake importation:private_cloud_ii_prices

# Run the project.
$ docker-compose up
```

Go to [http://localhost:3000](http://localhost:3000) and you should be able to see the project and one simulator created.

## Further documentation 

You can find documentation on usage and how to deploy the app to heroku [here](https://docs.google.com/document/d/1kucP4EAY3Uxvkfhl-LHSnRlPXZXGl_l7hgAe-rwrE54/edit)
