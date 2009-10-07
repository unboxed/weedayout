ActionController::Routing::Routes.draw do |map|
  map.resources :toilets
  map.root :toilets

  map.namespace :admin do |admin|
    admin.resources :toilets
    admin.root :controller => "toilets", :action => "index"
  end

  map.connect 'toilets/:permalink', :controller => 'toilets', :action => 'show'
end
