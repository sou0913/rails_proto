Rails.application.routes.draw do
  resources :problems
  resources :employees
  resources :salaries, only: :show
  resources :problem_types, only: :index
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
