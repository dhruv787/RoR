Rails.application.routes.draw do
  devise_for :installs
  resources :posts
  resources :categories
  root "posts#index"
  resources :posts #RESTful routing - generated by scafffold magic
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
