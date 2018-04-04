Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root 'application#goodbye'

  namespace :api do
    namespace :v1 do
      # devise_for :users, controllers: { registrations: 'registrations', sessions: 'sessions' }
      devise_for :users
      resources :workouts
    end
  end
end