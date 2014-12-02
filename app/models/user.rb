class User < ActiveRecord::Base
  has_many :meals
  has_many :cuisines, through: :meals
end
