json.array! @meals do |meal|
  json.partial! 'meals/meal', meal: meal
end