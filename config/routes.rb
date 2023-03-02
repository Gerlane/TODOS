Rails.application.routes.draw do
  resources :tasks
  resources :topicos
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
 # get "/topicos", to: "topicos#index" #mapeia
  #post "/topicos", to: "topicos#create"
  #get "topicos/new", to: "topicos#new", as: :new_topico
  #get "topicos/:id/edit", to: "topicos#edit", as: :edit_topico
  #get "/topicos/:id", to: "topicos#show", as: :topico
  #patch "/topicos/:id", to: "topicos#update"
  #put "/topicos/:id", to: "topicos#update"
  #delete "/topicos/:id", to: "topicos#destroy"

end
