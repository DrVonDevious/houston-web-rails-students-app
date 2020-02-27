class InstructorsController < ApplicationController

  before_action :set_instructor, only: [:show, :edit, :update, :destroy]

  def index
    @instructors = Instructor.all
  end  

  def show
    @students = @instructor.students
  end  

  def new
    @instructor = Instructor.new
  end  

  def create
    @instructor = Instructor.new(instructor_params)
    redirect_to instructor_path(@instructor)
  end  

  def edit
  end  

  def update
    @instructor.update(instructor_params)
    redirect_to instructor_path(@instructor)
  end  

  def destroy
    @instructor.destroy
    redirect_to instructors_path
  end  

  private

  def set_instructor
    @instructor = Instructor.find(params[:id])
  end

  def instructor_params
    params.require(:instructor).permit(:name)
  end  


end
