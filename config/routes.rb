ActionController::Routing::Routes.draw do |map|
  map.resources :toilets, :content_blocks
  map.root  :controller => "pages"

  map.namespace :admin do |admin|
    admin.resources :toilets, :content_blocks
    admin.root :controller => "admin"
  end

  map.permalink_to_toilet 'toilets/:permalink', :controller => 'toilets', :action => 'show'
end
