RailsTests::Application.routes.draw do
  resources :posts do
    get :autocomplete_user_name, :on => :collection
  end

  resources :comments
  resources :users

  root :to => "welcome#index"
end
