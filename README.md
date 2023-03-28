##Heroes and Superpowers API
This is an API built using Rails that allows you to track heroes and their superpowers.

## Deployed Application 

This is application has been deployed on render and is available through the following link:
-https://superheroess.onrender.com/heroes


 Requirements
    Setup
    Models
    Validations
    Routes

## Requirements

To use this API, you must have the following:

    Ruby
    Rails

Setup
### Installation
To install and use this API, follow these steps:
1. Clone the repository
   git clone https://github.com/maqiie/phase-4-codechallenge-superheroes
2. install the dependencies and
   bundle install
3. Set up the database:
   rails db:migrate
   rails db:seed
4. Start the server
   rails server
Once the server is up and runnning, you should be able to access the API at `https://localhost:3000`


### Models

This project has three models:

    Hero
    Power
    HeroPower

Hero has many Powers through HeroPower and Power has many Heros through HeroPower. HeroPower belongs to both Hero and Power.

###### To create these models and migrations, run:

vbnet

rails generate model Hero name:string super_name:string
rails generate model Power name:string description:text
rails generate model HeroPower hero:references power:references strength:string

In the model files, we established the relationships:

ruby

class Hero < ApplicationRecord
  has_many :hero_powers, dependent: :destroy
  has_many :powers, through: :hero_powers
end

class Power < ApplicationRecord
  has_many :hero_powers, dependent: :destroy
  has_many :heroes, through: :hero_powers
end

class HeroPower < ApplicationRecord
  belongs_to :hero
  belongs_to :power
end

#### Validations

The following validations are in place:

    HeroPower: strength must be one of the following values: 'Strong', 'Weak', 'Average'
    Power: description must be present and at least 20 characters long

#### Routes

This project has the following routes:
GET /heroes

Returns JSON data for all heroes in the format:

json

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

#### GET /heroes/:id

Returns JSON data for a single hero with their powers in the format:

json

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

If the Hero does not exist, the API will return:

json

{
  "error": "Hero not found"
}

#### GET /powers

Returns JSON data for all powers in the format:

json

[
  {
    "id": 1,
    "name": "super strength",
   
  }
]
## Development and Status

This application was developed using the following technologies:
-  [Ruby](https://www.ruby-lang.org/en/)
-  [Ruby on Rails](https://rubyonrails.org/)

Status: Maintained
## Author and Licence

Author:[markpaul](https://github.com/maqiie)

Licence: MIT Licence


