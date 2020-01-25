class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :define_date

  def define_date
    d = Date.today
    @year = d.year
  end

  private
  
  def if_not_admin
    redirect_to root_path unless current_user.admin?
  end
  
  def if_not_signed_in
    redirect_to root_path unless user_signed_in?
  end
end
