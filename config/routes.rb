Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # mapping root path to this controller route
  root "articles#index"
  # this declares get /articles requests are mapped to the index action of articlesController
  
  # get "/articles", to: "articles#index"
  # get "/articles/:id", to: "articles#show" # show action of controller

  # resources is a shortcut for all of the above and the other common routes
  resources :articles do
    resources :comments
  end

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  # root "posts#index"
end
