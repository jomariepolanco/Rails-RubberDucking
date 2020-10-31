class StudentsController < ApplicationController

  def index
    @students = Student.all
    render :index 
  end

  def show
    @student = Student.find(params[:id])
    render :show
  end

  def new
    @student = Student.new 
    render :new
  end

  def create
    @student = Student.create(student_params)
  end

  private

  def student_params
    params.require(:student).permit(:name, :mod)
  end
end
