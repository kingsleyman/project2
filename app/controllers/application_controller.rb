class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user
  
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
  
  def is_authenticated?
    redirect_to login_url unless current_user
  end

  handles_sortable_columns do |conf|
      conf.sort_param = "sort_by"
  end
  
end