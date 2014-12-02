require 'rails_helper'

RSpec.describe "Cuisines", :type => :request do

  let(:json) do
    JSON.parse(response.body)
  end

  # i want to:

  # - show all cuisines
  # - show a single cuisine
  # - create a new cuisine

  # what information will be displayed
  # for a cuisine's singular JSON view?

  before(:each) do
    @cuisines = FactoryGirl.create_list(:cuisine, 5)
  end

  describe "GET /cuisines" do

    # INDEX

    it "shows all available cuisines" do
      get cuisines_path
      expect(json.length).to eq @cuisines.length
    end
  end

  describe "GET /cuisines/:id" do

    # READ

    it "displays information for a cuisine" do
      cuisine = @cuisines.first
      get cuisine_path(cuisine.id)
      expect(json["id"]).to eq cuisine.id
    end
  end

  describe "POST /cuisines/" do

    # CREATE
    it "creates a new cuisine" do
      cuisine = FactoryGirl.attributes_for(:cuisine)
      post cuisines_path, cuisine: cuisine
      expect(json["name"]).to eq cuisine[:name]
    end
  end

end
