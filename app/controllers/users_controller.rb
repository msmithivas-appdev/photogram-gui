class UsersController < ApplicationController

  def index

    matching_users = User.all
    @list_of_users = matching_users.order({ :username => :asc })
    render({ :template => "user_templates/index.html.erb" })
  end

  def show

# @username = params("path_username")


  end


end
