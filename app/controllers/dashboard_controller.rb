class DashboardController < ApplicationController
  before_action :require_login

  def index
    if current_user.admin?
      redirect_to employees_path
    else
      redirect_to bills_path
    end
  end
end
