# reddit-mongodb-aggregation

## Objectives

Test mongoDB aggregations

## Installation

Prerequesites: You need to have docker and docker-compose installed. (`docker --version` to make sure you have it)

1. `docker-compose build`
2. `docker-compose up -d`

3. [Optional] To detach your console, you can press CTRL+P and CTRL+Q
4. [Optional] Make sure your container is running: `docker-compose ps`
5. [Optional] Make sure Mongo is listening: `curl localhost:27018`

## Download dataset RC_2015-1:

We are going to use Reddit comment dump shared by reddit user \Stuck_In_the_Matrix (thank you!)
* Original post: https://www.reddit.com/r/datasets/comments/3bxlg7/i_have_every_publicly_available_reddit_comment/
* Torrent link: https://mega.nz/#!ysBWXRqK!yPXLr25PgJi184pbJU3GtnqUY4wG7YvuPpxJjEmnb9A

## Import Reddit Dataset

1. `docker exec -i -t mongo-db /bin/bash`
2. `mongo`
3. Create a new `reddit` database and `comments` collection
4. Exit mongo
5. From Host: Unzip RC_2015-01 file and move it to `./shared` folder
6. From Container: `cd /shared` and `mongoimport --db reddit --collection comments --file RC_2015-01`

## Run aggregations

Example:
