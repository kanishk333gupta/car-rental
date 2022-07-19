class UsersController < ApplicationController
  before_action :verify_is_admin

  def index
    @users = User.all
  end
  
  def show
    @user = User.find(params[:id])
  end

  def destroy
    user = User.find(params[:id]) 
     
     if user.destroy
       flash[:success] = "Successfully deleted"
     else
       flash[:error] = "Error"
     end
     redirect_to root_path
    end


end