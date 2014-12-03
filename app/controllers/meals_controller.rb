class MealsController < ApplicationController
  def index
    @meals = Meal.find_by(user_id: params[:user_id])
    render
  end

  def create
    @meal = Meal.create(meal_params)
    render
  end

  private

    def meal_params
      params.require(:meal).permit(:user_id, :cuisine_id)
    end

end
