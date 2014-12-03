class MealsController < ApplicationController
  def index
    @meals = Meal.where(user_id: params[:user_id])
    render
  end

  def create
    @meal = Meal.create(user_id: 1, cuisine_id: 1)
    render
  end

  private

    def meal_params
      params.require(:meal).permit(:user_id, :cuisine_id)
    end

end
