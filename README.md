# Useflow

- User
  - fills in search form
    - clicks search
      - receives results
  - clicks log in
    - fills in info
      - clicks log in
  - clicks sign up
    - fills in info
      - clicks sign up

# Mockups

[Moqup](https://moqups.com/r.pazyaquian@gmail.com/Y5Nwmg9n)

# Models

- User
  - `name:string` (for something simple right now)
  - has many Meals
    - allows me to answer "how many times has this specific User eaten Chinese?"
  - has many Cuisines, through Meals
    - allows me to answer "how many different Cuisines has this User (recently) eaten?"

- Cuisine
  - `type:string` (e.g. Italian, Chinese, etc.)
  - has many Meals
    - allows me to answer "how many times have Users eaten Chinese?"
  - has many Users, through Meals
    - allows me to answer "what percentage of Users have (recently) eaten Chinese?"

- Meals
  - belongs to a Cuisine
  - belongs to a User
  - has a timestamp
    - allows me to answer "when did this User have this Meal?" and "how much has this Cuisine been eaten recently?"
  - question: what will Meals be nested under? `/users/meals` makes sense, but does `/cuisine/meals/`? might as well go with both, for now