class Cuisine < ActiveRecord::Base
  has_many :meals
  has_many :users, through: :meals
end
