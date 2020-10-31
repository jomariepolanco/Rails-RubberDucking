class DucksController < ApplicationController

  def index
    @ducks = Duck.all
    render :index 
  end

  def show
    @duck = Duck.find(params[:id])
    render :show
  end

  def edit

    render :edit
  end

  def update
  end

  private

  

end
