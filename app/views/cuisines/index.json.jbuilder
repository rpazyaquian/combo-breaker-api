json.array! @cuisines do |cuisine|
  json.partial! 'cuisines/cuisine', cuisine: cuisine
end