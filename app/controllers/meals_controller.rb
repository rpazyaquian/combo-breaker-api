class MealsController < ApplicationController
  def index
    @meals = Meal.where(user_id: params[:user_id])
    render
  end

  def create
    @meal = Meal.create(user_id: params[:user_id], cuisine_id: meal_params[:cuisine_id])
    render
  end

  private

    def meal_params
      params.require(:meal).permit(:cuisine_id)
    end

end
