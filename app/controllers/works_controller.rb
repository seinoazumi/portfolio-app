class WorksController < ApplicationController

  def index
    @categories = Category.all
    @works = Work.all if params.has_key?(:all_category)
    @works = params.has_key?(:category) ?  Work.find(params[:category][:id]) : Work.all
    
    # @works = params[:category_id].present? ? Category.find(params[:category_id]).works : Work.all
  end

  def show
    @work = Work.find(params[:id])
    respond_to do |format|
      format.html
      format.json
    end
  end

  private

  def search_params
    params.require(:work).permit(id:[])
  end
end
