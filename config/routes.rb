Rails.application.routes.draw do
  devise_for :users
  scope defaults: { format: :json } do
    root to: "status#index"
    resources :sessions, only: [:create]
    resources :categories, only: [:index, :show, :create]
    resources :recommendations do
      resources :comments, only: [:create]
    end
  end
end


