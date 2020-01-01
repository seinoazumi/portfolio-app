class InformationsController < ApplicationController
  def index
  end

  def about
    d = Date.today
    @year = d.year
  end
end
