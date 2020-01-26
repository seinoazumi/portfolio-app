class WorksController < ApplicationController
  
  def index
    @works = Work.all.order(date: "DESC")
  end

  def show
    @work = Work.find(params[:id])
    respond_to do |format|
      format.html
      format.json
    end
  end

end
