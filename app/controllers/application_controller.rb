class ApplicationController < ActionController::Base
  helper_method :current_user

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def require_login
    redirect_to root_path, alert: "Please sign in" unless current_user
  end

  def require_admin
    redirect_to dashboard_path, alert: "Access denied" unless current_user&.admin?
  end

  def require_employee
    redirect_to dashboard_path, alert: "Access denied" unless current_user&.employee?
  end
end
