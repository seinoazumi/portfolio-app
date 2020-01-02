class WorksController < ApplicationController
  def index
    @works = Work.all
    binding.pry
  end

end
