class InformationsController < ApplicationController

  def index
    @works = Work.where(category: "programing").order(date: "DESC")
    @inquiry = Inquiry.new
  end

  def about
  end
end
