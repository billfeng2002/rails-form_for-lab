class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find_by(id: params[:id])
  end

  def create
    student = Student.create(student_params)
    redirect_to student_path(student)
  end

  def update
    student = Student.find_by(id: params[:id])
    student.update(student_params)
    redirect_to student_path(student)
  end

  def edit
    @student = Student.find_by(id: params[:id])
  end

  def new
    @student = Student.new()
  end

  private

  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end
end