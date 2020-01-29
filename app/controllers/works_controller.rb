class WorksController < ApplicationController

  def index
    @works = params[:category_id].present? ? Category.find(params[:category_id]).works : Work.all
  end

  def show
    @work = Work.find(params[:id])
    respond_to do |format|
      format.html
      format.json
    end
  end

end
