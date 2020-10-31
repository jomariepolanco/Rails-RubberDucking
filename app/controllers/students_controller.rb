class StudentsController < ApplicationController

  def index
    @students = Student.all
    render :index 
  end

  def show
    @students = Student.find(params[:id])
    render :show
  end
end
