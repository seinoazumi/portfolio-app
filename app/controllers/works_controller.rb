class WorksController < ApplicationController
  def index
    @works = Work.all.order(date: "DESC")
  end

  def show
    @work = Work.find(params[:id])
    @date = @work.date.strftime("%Y. %m")
  end

  private

  def work_params
    params.require(:work).permit(:name, :category, {images: []}, :description, :softwear, :time, :date, :language, :url, :recomend)
  end
end
