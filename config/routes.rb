Rails.application.routes.draw do
  get "/", :controller => "places", :action => "index"
  get "/login", :controller => "sessions", :action => "new"
  resources "places"
  resources "posts"
  resources "sessions"
  resources "users"

  get "/logout", :controller => "sessions", :action => "destroy"
end
