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

  before(:all) do
    @cusines = FactoryGirl.create_list(:cuisine, 5)
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

    cuisine = @cuisines.first

    it "displays information for a cuisine" do
      get cuisine_path(cuisine.id)
      expect(json["id"]).to eq cuisine.id
    end
  end

  describe "POST /cuisines/" do

    # CREATE

    cuisine = FactoryGirl.attributes_for(:cuisine)

    it "creates a new cuisine" do
      post cuisines_path, cuisine: cuisine
      expect(json).to eq cuisine.attributes
    end
  end

end
