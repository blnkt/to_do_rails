ToDo::Application.routes.draw do
  match('/', {:via => :get, :to => 'lists#index'})
  match('lists', {:via => :get, :to => 'lists#index'})
  match('lists', {:via => :post, :to => 'lists#create'})
  match('lists/new', {:via => :get, :to => 'lists#new'})
  match('lists/:id', {:via => :get, :to => 'lists#show'})
end
