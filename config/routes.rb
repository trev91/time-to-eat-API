Rails.application.routes.draw do
  resources :questions
  resources :responses
  resources :surveys
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
