# Readme

## Instructions to run app on Cloud9

1. Create a new Cloud9 instance with the "Blank" template
1. ```curl -fsSL c9setup.saasbook.info | bash --login && rvm use 2.3.0 --default```
1. ```git clone git@github.com:it484-muzak/master-rater.git```
1. Change directory into the app directory ```cd master-rater```
1. ```gem install rails -v 4.2.6```
1. ```bundle install```
1. Migrate the database: ```rake db:migrate```
1. Seed the database: ```rake db:seed```
1. Run the app: ```rails s -p $PORT -b $IP```


## Commands for development
* To delete all database data and rebuild it: 

   ```rake db:drop db:migrate db:seed```
* To manually query the ActiveRecords (i.e. Artists):

   1. ```rails console```
   2. ```Artist.all``` <- To see all Artists
   3. ```Artist.where("name = 'Defeater'")``` <- To search for a specific record. Returns a list of results, even if there's only one.
