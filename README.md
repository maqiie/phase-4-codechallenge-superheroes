Heroes and Superpowers API
This is an API built using Rails that allows you to track heroes and their superpowers.

Table of Contents
Learning Goals
Requirements
Project Setup
Project Guidelines
Models
Validations
Routes
Learning Goals
Build an API using Rails.

Requirements
Create a Rails API backend.
Have at least three resources (three DB tables).
Project Setup
Once you have the plan in place for the application you want to build take the following steps:

Create a new Rails project.
Create a new GitHub repository (NB: ENSURE IT IS PRIVATE).
Add your TM as a contributor to the project. (This is only for grading purposes. We promise, we won't steal your code)
Ensure you regularly commit to the repository.
Project Guidelines
Models
You need to create the following relationships:

A Hero has many Powers through HeroPower
A Power has many Heros through HeroPower
A HeroPower belongs to a Hero and belongs to a Power
Start by creating the models and migrations for the following database tables:

Add any code needed in the model files to establish the relationships.

Then, run the migrations

You are welcome to generate your own seed data to test the application.

Validations
Add validations to the HeroPower model:

strength must be one of the following values: 'Strong', 'Weak', 'Average'
Add validations to the Power model:

description must be present and at least 20 characters long
Routes
Set up the following routes. Make sure to return JSON data in the format
specified along with the appropriate HTTP verb.

GET /heroes
Return JSON data in the format below:

json
Copy code
[
  { 
    "id": 1, 
    "name": "Kamala Khan", 
    "super_name": "Ms. Marvel" 
  },
  { 
    "id": 2, 
    "name": "Doreen Green", 
    "super_name": "Squirrel Girl" 
  },
  { 
    "id": 3, 
    "name": "Gwen Stacy", 
    "super_name": "Spider-Gwen" 
  }
]
GET /heroes/:id
If the Hero exists, return JSON data in the format below:

json
Copy code
{
  "id": 1,
  "name": "Kamala Khan",
  "super_name": "Ms. Marvel",
  "powers": [
    {
      "id": 1,
      "name": "super strength",
      "description": "gives the wielder super-human strengths"
    },
    {
      "id": 2,
      "name": "flight",
      "description": "gives the wielder the ability to fly through the skies at supersonic speed"
    }
  ]
}
If the Hero does not exist, return the following JSON data, along with
the appropriate HTTP status code:

json
Copy code
{ "error": "Hero not found" }
GET /powers
Return JSON data in the format below:

json
Copy code
[
  {
    "id": 1,
    "name": "super strength",
    "description": "gives the wielder super-human strengths"
  },
  {
    "id": 1,
    "name": "





