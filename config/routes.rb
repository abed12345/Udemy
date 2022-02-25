Rails.application.routes.draw do
  resources :posts
  get "about" => "public#about", as: 'about'
  get "blog" => "public#blog", as: 'blog'
  get "contact" => "public#contact", as: 'contact'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
    root to: "public#homepage"
  # Defines the root path route ("/")
  # root "articles#index"
end
