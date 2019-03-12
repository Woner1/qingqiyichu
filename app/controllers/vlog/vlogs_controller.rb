class Vlog::VlogsController < ApplicationController

  def index
    @vlogs = Vlog.all


  end

  def show
    @vlog=Vlog.find(params[:id])
  end

  def new
  end
end
