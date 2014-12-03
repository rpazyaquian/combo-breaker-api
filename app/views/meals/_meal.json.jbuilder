json.id meal.id
json.cuisine do |json|
  json.partial! 'cuisines/cuisine', cuisine: meal.cuisine
end
json.created_at meal.created_at