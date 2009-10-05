ActionController::Routing::Routes.draw do |map|
  map.resources :toilets, :admin
  map.root :toilets

  map.connect 'toilets/:permalink', :controller => 'toilets', :action => 'show'
end
