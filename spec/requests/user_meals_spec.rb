require 'rails_helper'

RSpec.describe "UserMeals", :type => :request do

  let(:json) do
    JSON.parse(response.body)
  end

  # i want to:

  # - show all of a user's meals
  # - create a new meal for a user

  # i'll have to make a user and a cuisine

  before(:all) do
    @user = FactoryGirl.create(:user)
    @cuisine = FactoryGirl.create_list(:cuisine)
    @meals = FactoryGirl.create_list(:meal, 5, user: @user, cuisine: @cuisine)
  end

  describe "GET /user_meals/" do

    # INDEX

    it "shows all of a user's meals" do
      get user_meals_path(@user.id)
      expect(json.length).to eq @meals.length
    end
  end

  describe "POST /user_meals/" do

    # CREATE

    it "creates a new meal for a user" do
      meal = FactoryGirl.attributes_for(:meal, user: @user, cuisine: @cuisine)
      post user_meals_path(@user.id), meal: meal
      expect(json).to eq meal.attributes
    end
  end

end
