# README for Pamela's Panel 

To begin, please run bundle install to install all gems necessary to run this app. 

Once installed, let's run the following in your terminal: 
- $rails db:create (will create a database)
- $rails db:migrate (will migrate tables into database)
- $rails db:seed (will populate the tables in database)
- $rails s (will run the server)

To sign in to the admin panel, please use the following: 
 - un: test@test.com
 - pw: test123

"Pamela's Panel" is an full-stack admin panel app created for an admin user at Lee University to be able to create, read, update, and delete instructors, students, courses, and cohorts. 

## Links
- GitHub
- Heroku

## Technology

## Backend
- Ruby Rails
- AJAX

## Gems 
- Devise

## Frontend
- Bootstrap

## How it works

### Backend 

The backend is built on Rails. It has multiple routes in which an admin can create, read, update, and destroy data using AJAX calls. When the admin logs in, the page will be redirected to a logged_in admin homepage. The controllers contain the routes allowing for CRUD functionality. 

### Frontend

Bootstrap allowed for a clean layout and meaningful icons. 

In the HTML, the data is displayed via Ruby syntax.

### Heroku 

I have used Heroku to host my "Pamela's Panel" app. It allowed me to learn how to read the errors in the log and push efficiently. 



