Rails.application.routes.draw do

get("/", { :controller => "users", :action => "index" })
get("/users", { :controller => "users", :action => "index" })

get("/photos", { :controller => "photos", :action => "index" })

get("/users/:path_username", { :controller => "users", :action => "show" })

get("/photos/:path_photo", { :controller => "photos", :action => "show" })

get("/delete_photo/:path_photo", { :controller => "photos", :action => "delete" })

get("/add_photo", { :controller => "photos", :action => "add" })

get("/edit_photo/:path_photo", { :controller => "photos", :action => "edit" })

get("/insert_comment_record", { :controller => "photos", :action => "add_comment" })

get("/insert_user_record", { :controller => "users", :action => "add_user" })

end
