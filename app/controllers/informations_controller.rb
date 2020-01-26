class InformationsController < ApplicationController

  def index
    @works = Work.limit(4).order(date: "DESC")
    @inquiry = Inquiry.new
  end

  def about
  end
end
