class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  private
  def verify_is_admin
    unless current_user.admin?
      flash[:alert] = "You are not authorized to access this section"
      redirect_to root_path
    end
  end

  # def current_user
  #   @current_user ||= User.find_by(id: session[:user_id])
  # end

  # def correct_current_user
  #   unless current_user.admin?
  #     @curr = User.find(current_user.id)
  #     unless current_user == @curr
  #       flash[:danger] = "You cannot view or edit other user's info."
  #       redirect_to root_path
  #       return
  #     end
  #   end
  # end



  
end