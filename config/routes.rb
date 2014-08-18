ToDo::Application.routes.draw do
  match('lists', {:via => :get, :to => 'lists#index'})
end
