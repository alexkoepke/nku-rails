class StudentsController < ApplicationController
  def index
    @students = Student.all
  end
  
  def new
    @student = Student.new
  end
  
  def create
    @student = Student.new(params[:student].permit(:name, :nickname, :email, :image_url))
    
    if @student.save
      redirect_to @student
    else
      render 'new'
    end
  end
  
  def show
    @student = Student.find(params[:id])
  end
  
  def edit
    @student = Student.find(params[:id])
  end
  
  private
    def student_params
      params.require(:student).permit(:name, :nickname, :email, :image_url)
    end
end