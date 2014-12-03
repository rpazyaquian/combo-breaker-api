class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    render
  end

  def create
    @user = User.create(user_params)
    render
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    render
  end

  private

    def user_params
      params.require(:user).permit(:name)
    end

end
