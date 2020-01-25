class WorksController < ApplicationController
  
  def index
    @works = Work.all.order(date: "DESC")
  end

  def show
    @work = Work.find(params[:id])
    @date = @work.date.strftime("%Y. %m")
    
  end

end
