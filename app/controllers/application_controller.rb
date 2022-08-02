class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  private
  def verify_is_admin
    unless current_user.admin?
      flash[:alert] = "You are not authorized to access this section"
      redirect_to root_path
    end
  end

end