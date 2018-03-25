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

## Creating a new route, controller and haml view
* Creating the route:
	Modifying the /config/routes.rb file:
	Examlple: 
	```root 'pages#show```
	```root``` is the subdirectory to follow
	```pages``` is the controller 
	```show``` is the action to perform

* Creating a new controller for the route
	Running the following command will give us a new controller and .erb files for our route:
	```rails generate controller pages new create update edit destroy index show```
	```rails generate controller``` should stay unmodified
	```pages``` is the route name to create the controller for
	```new``` specifies that we want to create a new controller
	```create update edit destroy index show``` are the actions our controller will have

* Converting default controller generated .erb to .haml files
	Run the following rake ```rake haml:erb2haml```
	Enter 'y' when prompted to remove the .erb files


