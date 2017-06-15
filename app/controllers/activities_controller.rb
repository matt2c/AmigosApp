class ActivitiesController < ApplicationController
  def new
    @activity = Activity.new
  end

  def create
    activity = Activity.new( activity_params )
    activity.user = @current_user
    cloudinary = Cloudinary::Uploader.upload( params[ "activity" ][ "image" ] )
    activity.image = cloudinary["url"]
    activity.save
    redirect_to user_path(@current_user)
  end

  def update
    activity = Activity.find_by(id: params["id"])
    activity.update( activity_params )
    if params[ "activity" ][ "image" ] != nil
    cloudinary = Cloudinary::Uploader.upload( params[ "activity" ][ "image" ] )
    activity.image = cloudinary["url"]
    end
    activity.save
    redirect_to "/users/#{@current_user_id}/activities"
  end

  def edit
    @activity = Activity.find_by(id: params['id'])
    if @activity.user_id != @current_user_id
      redirect_to user_path(@current_user)
    end
  end

  def destroy
    @activity = Activity.find(params[:id])
    @activity.destroy
    redirect_to user_path(@current_user)

  end

  def show
    @activity = Activity.find_by(id: params["id"])
    @user = @current_user.activity
    @activities = @current_user.activity
  end

  def index
  end


  private
def activity_params
  params.require(:activity).permit(:name, :event_date, :event_time, :description, :location, :image)
end

end
