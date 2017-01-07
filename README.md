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

## Setup without Docker

```bash

# Clone the project and CD into it.
$ git clone https://github.com/PabloVallejo/simulator.git
$ cd simulator 

# Install rails and install dependencies.
$ gem install rails
$ bundle install

# Create the database
$ rails db:create

# Run the server.
$ bundle exec rails s -p 3000 -b '0.0.0.0
```

Go to [http://localhost:3000](http://localhost:3000) to see the project
