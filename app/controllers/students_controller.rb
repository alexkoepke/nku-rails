class StudentsController < ApplicationController
  def new
    @student = Student.new
  end

  def create
    @student = Student.create!(student_params)
    redirect_to students_path, notice: "Successfully created #{@student.name}"
  end

  def edit
    @student = Student.find(params[:id])
    if current_student == @student
      render :edit
    else
      redirect_to students_path, notice: "You do not have permission to edit #{@student.name}'s profile."
    end
  end

  def update
    @student = Student.find(params[:id])
    @student.update_attributes!(student_params)
    redirect_to students_path, notice: "Successfully updated #{@student.name}"
  end

  def index
    @students = Student.all
  end

  private

  def student_params
    params.require(:student).permit!
  end
end
