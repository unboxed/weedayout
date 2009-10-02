ActionController::Routing::Routes.draw do |map|
  map.resources :toilets
  map.root :toilets

  map.connect 'toilets/:permalink', :controller => 'toilets', :action => 'view'
end
