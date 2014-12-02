# Models

- User
  - `name:string` (for something simple right now)
  - has many Meals
    - allows me to answer "how many times has this specific user eaten Chinese?"

- Cuisine
  - `type:string` (e.g. Italian, Chinese, etc.)
  - has many Meals
    - allows me to answer "how many times have users eaten Chinese?"
  - has many Users, through Meals
    - allows me to answer "what percentage of Users have recently eaten Chinese?"