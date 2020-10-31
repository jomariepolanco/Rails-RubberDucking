class DucksController < ApplicationController
  before_action :find_duck, only: [:show, :edit, :update]

  def index
    @ducks = Duck.all
    render :index 
  end

  def show
    render :show
  end

  def edit
    render :edit
  end

  def update
    if @duck.update(duck_params)
      redirect_to duck_path(@duck)
    else
      flash[:duck_errors] = @duck.errors.full_messages
      redirect_to edit_duck_path
    end
  end

  private

  def duck_params
    params.require(:duck).permit(:name, :description, :student_id)
  end

  def find_duck 
    @duck = Duck.find(params[:id])
  end

end
