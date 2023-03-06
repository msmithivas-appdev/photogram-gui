Rails.application.routes.draw do

get("/users", { :controller => "users", :action => "index" })

get("/photos", { :controller => "photos", :action => "index" })

get("/users/:userid", { :controller => "users", :action => "profile" })

get("/photos/:photoid", { :controller => "photos", :action => "profile" })


end
