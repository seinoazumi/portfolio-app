class InformationsController < ApplicationController

  def index
    @works = Work.all.order(date: "DESC")
  end

  def about
  end
end
