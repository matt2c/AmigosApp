require("geocoder")
class UsersController < ApplicationController
  before_action :check_if_logged_out, only: [:new, :create]
  before_action :check_if_logged_in, only: [:edit, :update]

  def new
    @user = User.new
  end

  def create
    # raise
    @address = Geocoder.search(params[ "user" ][ "livingplace" ])
    @user = User.new( user_params )
    if @address.length == 0
     flash[:error] = "Please enter a valid address"

     render :new
   else

     @user.longitude = @address[0].geometry["location"]["lng"]
     @user.latitude = @address[0].geometry["location"]["lat"]
     cloudinary = Cloudinary::Uploader.upload( params[ "user" ][ "image" ] )
     @user.image = cloudinary["url"]
    #  raise "hell"
    if @user.save
      # raise
     session[:user_id] = @user.id
     redirect_to user_path( @user )
    else
     render :new
    end
  end
  end

  def update
   user = User.find_by( id: params['id'] )
   user.update( user_params )
   if params[:user][:image]
    cloudinary = Cloudinary::Uploader.upload( params[ "user" ][ "image" ] )
    user.image = cloudinary["url"]
   end
   user.save
   redirect_to "/users/#{user.id}"
  end

  def edit
    @user = User.includes(:interests).find_by(id: params['id'])
    @interests = Interest.all
  end

  def destroy
    user = User.find_by(id: params["id"])
    user.destroy
    redirect_to "/"
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find_by(id: params["id"])
    @interests = Interest.joins(:users).where(users: {id: params["id"]})

    @interestids = @interests.map {|i| i.id}

    @activities = @user.suggested_activities
    # @activities = Activity.joins(:interests)
    # .where("interests.id in (:intrests)", {intrests:@interestids})
    # .uniq

    @suggestedinterests = Interest.where("id not in (:intrests)", {intrests:@interestids})

  end

  def add_interest
    @interest = Interest.find_by(id: params["interestId"])
    @current_user.interests << @interest

    render json: {result:'Ok'}
  end

  def add_new_interest
    @interest = params["interest"]
    @current_user.interests.create({name:@interest})

    render json: {result:'Ok'}
  end

  def remove_interest
    @interest = Interest.find_by(id: params["interestId"])
    @current_user.interests.delete(@interest)

    render json: {result:'Ok'}
  end

  def activities
    @user = User.find( params["id"] )
    @activities = @user.activities
  end

  private

  def user_params
     params.require(:user).permit(:name, :surname, :password, :password_confirmation, :email, :gender, :birthday, :relationship, :livingplace, :language, :image, :interest_ids => [])
  end

  def check_if_logged_out
    if @current_user
      flash[:error] = "You are already logged in!"
      redirect_to "/users"
    end

  end

  def check_if_logged_in
    unless @current_user
      flash[:error] = "You need to be logged in!"
      redirect_to "/login"
    end
  end
end
