class UsersController < ApplicationController

  def index

    matching_users = User.all
    @list_of_users = matching_users.order({ :username => :asc })
    render({ :template => "user_templates/index.html.erb" })
  end

  def show

    @url_username = params.fetch("path_username")

    matching_usernames = User.where({ :username => @url_username })

    @the_user = matching_usernames.at(0)

    if @the_user == nil
      redirect_to("/404")
    else
      render({ :template => "user_templates/show.html.erb" })
    end

    def add_user
    
      the_username = params.fetch("input_username")

      new_user = User.new
      new_user.username = the_username
      new_user.save


    
      redirect_to("/users/" + the_username.to_s )
    
    end

    def update_username
    
      the_new_username = params.fetch("input_username")
      the_old_username = params.fetch("path_username")
      matching_usernames = User.where({ :username => the_old_username })

      @the_user = matching_usernames.at(0)
  
      if @the_user == nil
        redirect_to("/404")
      else
        @the_user.username = the_new_username
        redirect_to("/users/" + the_new_username.to_s )
      end

    
    end


  end


end
