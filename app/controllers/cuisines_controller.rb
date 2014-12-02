class CuisinesController < ApplicationController
  def show
    @cuisine = Cuisine.find(params[:id])
    render
  end

  def create
    @cuisine = Cuisine.create(cuisine_params)
    render
  end

  def index
    @cuisines = Cuisine.all
    render
  end

  private

    def cuisine_params
      params.require(:cuisine).permit(:name)
    end
end
