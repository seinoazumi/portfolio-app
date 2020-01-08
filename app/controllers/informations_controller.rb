class InformationsController < ApplicationController

  def index
    @works = Work.where(category: "programing").order(date: "DESC")
  end

  def about
  end
end
