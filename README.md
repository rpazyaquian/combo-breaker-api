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
    - allows me to answer "how many times has this specific user eaten Chinese?"
  - has many Cuisines, through Meals
    - allows me to answer "how many different Cuisines has this User (recently) eaten?"

- Cuisine
  - `type:string` (e.g. Italian, Chinese, etc.)
  - has many Meals
    - allows me to answer "how many times have users eaten Chinese?"
  - has many Users, through Meals
    - allows me to answer "what percentage of Users have (recently) eaten Chinese?"