class StudentsController < ApplicationController
  def index
    @students = Student.all
  end
  
  def new
    @student = Student.new
  end
  
  def create
    @student = Student.new(params[:student].permit(:name, :nickname, :email, :image_url, :password, :password_confirmation))
    session[:student_id] = @student.id
    if @student.save
      redirect_to students_path, notice: "Hi #{@student.name}. Welcome to Bueller!"
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
  
  def update
    @student = Student.find(params[:id])
    
    if @student.update(params[:student].permit(:name, :nickname, :email, :image_url, :password, :password_confirmation))
      redirect_to students_path, notice: "#{@student.nickname}, you successfuly updated your profile!"
    else
      render 'edit'
    end
  end
  
  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    
    redirect_to students_path
  end
  
  def current_student
    @current_student ||= Student.find_by(id: session[:student_id]) if session[:student_id].present?
  end
  helper_method :current_student
  
  private
    def student_params
      params.require(:student).permit(:name, :nickname, :email, :image_url, :password, :password_confirmation)
    end
end