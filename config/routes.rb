ActionController::Routing::Routes.draw do |map|
  map.resources :users
  map.root :controller => 'users', :action => 'new'
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
