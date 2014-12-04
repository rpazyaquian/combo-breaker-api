class User < ActiveRecord::Base
  has_many :meals, dependent: :destroy
  has_many :cuisines, through: :meals
end
