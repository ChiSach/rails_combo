Rails.application.routes.draw do
  resource :combos
  scope 'greeting' do
    get '/', to: 'greeting#index'
    get '/hello', to: 'greeting#hello'
    get '/new', to: 'greeting#new'
    post '/new', to: 'greeting#create'
    get '/:greeting', to: 'greeting#greeting'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
