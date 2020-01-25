class Admin::WorksController < ApplicationController
  before_action :if_not_signed_in
  before_action :if_not_admin
  before_action :set_work, only: [:edit, :update, :destroy]
  before_action :set_categories, only: [:edit, :update]

  def new
    @categories = Category.all
    @work = Work.new
  end

  def create
    @work = Work.new(work_params)
    if @work.save
      redirect_to works_path
    else
      redirect_to new_admin_work_path
    end
  end

  def edit
    @work = Work.find(params[:id])
  end

  def update
    @work = Work.find(params[:id])
    if @work.update(work_params)
      redirect_to works_path
    else
      redirect_to edit_admin_work_path
    end
  end

  def destroy
    @work = Work.find(params[:id])
    if @work.destroy
      redirect_to works_path
    else
      redirect_to edit_work_path(@work)
    end
  end

  private

  def set_work
    @work = Work.find(params[:id])
  end

  def work_params
    params.require(:work).permit(:name, :category, {images: []}, :description, :softwear, :time, :date, :language, :url, :recomend, { :category_ids => [] })
  end

  def set_categories
    @categories = Category.find(params[:id])
  end
end
