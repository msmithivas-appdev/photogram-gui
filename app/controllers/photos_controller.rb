class PhotosController < ApplicationController

  def index

    matching_photos = Photo.all
    @list_of_photos = matching_photos.order({ :created_at => :desc })
    render({ :template => "photo_templates/index.html.erb" })
  end

  def show

    @url_photo = params.fetch("path_photo")
    matching_photos = Photo.where({ :id => url_photo })
    @the_photo = matching_photos.at(0)

    # matching_comments = Comment.all
    # @list_of_comments = matching_comments

    if @the_photo == nil
      redirect_to("/404")
    else
      render({ :template => "user_templates/show.html.erb "})
    end

  end 

  def delete
      the_id = params.fetch("path_photo")
      matching_photos = Photo.where({ :id => @the_id })
      the_photo = matching_photos.at(0)
      the_photo.destroy

      redirect_to("/")
     # render({ :template => "photo_templates/delete.html.erb "})
  end

  def add
    the_image = params.fetch("image")
    the_caption = params.fetch("caption")
    the_owner_id = params.fetch("owner_id")

    
    new_photo = Photo.new
    new_photo.image = the_image
    new_photo.caption = the_caption
    new_photo.owner_id = the_owner_id
    new_photo.save


    redirect_to("/photos")
   
  end

end
