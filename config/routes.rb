Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :home, only: [:index]
  root to: 'home#index'

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      devise_for :users, controllers: {
        sessions: 'api/v1/users/sessions'
      }
    end
  end
end
