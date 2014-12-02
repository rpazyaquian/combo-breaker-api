Rails.application.routes.draw do

  resources :users, only: [:show, :create, :update], defaults: {format: :json} do
    resources :meals, only: [:index, :create], defaults: {format: :json}
  end
  resources :cuisines, only: [:show, :create, :index], defaults: {format: :json}

end
