class PhotosController < ApplicationController

 #photos gets listed in the order at which they were created
 def index
  @photos = Photo.order('created_at')
 end
 

 def new
  @photo = Photo.new
 end
 
 def show
  @photo = Photo.find(params[:id])
 end

 
 def create
  @photo = Photo.new(photo_params)
  if @photo.save
   flash[:notice] = "Successfully added new photo!"
   redirect_to root_path
  else
   flash[:alert] = "Error adding new photo!"
   render :new
  end
 end

  def destroy
  @photo = Photo.find(params[:id])
    if @photo.destroy
      flash[:notice] = "Successfully deleted photo!"
      redirect_to root_path
    else
      flash[:alert] = "Error deleting photo!"
    end
  end


 private


 def photo_params
  params.require(:photo).permit(:title, :image)
 end

end