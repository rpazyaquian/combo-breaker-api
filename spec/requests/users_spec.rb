require 'rails_helper'

RSpec.describe "Users", :type => :request do

  let(:json) do
    JSON.parse(response.body)
  end

  # i want to:

  # - show a single user
  # - create a new user
  # - edit an existing user
  # - (maybe delete an existing user?)

  # there's no need for an index action

  before(:all) do
    @users = FactoryGirl.create_list(:user, 3)
  end

  describe "GET /users/:id" do

    # READ

    it "displays information for a user" do
      user = @users.first
      get user_path(user.id)
      expect(json["id"]).to eq user.id
    end
  end

  describe "POST /users/" do

    # CREATE

    it "creates a new user" do
      user = FactoryGirl.attributes_for(:user)
      post users_path, user: user
      expect(json).to eq user.attributes
    end
  end

  describe "PATCH/PUT /users/:id" do

    # UPDATE

    it "updates information for a user" do
      user = @users.first
      updated_user = FactoryGirl.attributes_for(:user)
      patch user_path(user.id), updated_user: updated_user
      expect(json).to eq updated_user.attributes
    end
  end

end
