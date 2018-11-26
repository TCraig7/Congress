Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :members, only: [:index, :show]
      resources :articles, only: [:index]
    end
  end
end
