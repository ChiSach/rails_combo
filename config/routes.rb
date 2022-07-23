Rails.application.routes.draw do
  scope 'greeting/' do
    get '', to: 'greeting#hello'
    get 'hello', to: 'greeting#hello'
    get 'good-morning', to: 'greeting#good_morning'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
