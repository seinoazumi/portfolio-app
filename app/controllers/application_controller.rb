class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :define_date

  def define_date
    d = Date.today
    @year = d.year
  end
end
