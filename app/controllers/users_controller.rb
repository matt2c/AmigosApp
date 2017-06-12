class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new( user_params )
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def index
  end

  def show
    @user = User.find_by(id: params["id"])
  end


  private

  def user_params
     params.require(:user).permit(:name, :password, :password_confirmation, :email, :birthday, :livingplace, :language, :interest_ids => [])
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
