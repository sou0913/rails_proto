Rails.application.routes.draw do
  resources :problems
  resources :problem_types, only: :index
end
