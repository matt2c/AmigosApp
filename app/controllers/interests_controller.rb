class InterestsController < ApplicationController
  def new
    @interest = Interest.new
  end

  def create
    @interest = Interest.new(interest_params)
    @interest.users << @current_user
    @interest.save
    redirect_to @current_user, notice: 'Interest was successfully created.'
  end

  def destroy
    @interest = Interest.find(params[:id])
    @interest.destroy
    redirect_to user_path
  end

  def index
    @all_interests = Interest.all
  end

  def show
    # @user = @interest.user
    @interest = Interest.find(params[:id])
  end


    private
  def interest_params
    params.require(:interest).permit(:name)
  end
end
