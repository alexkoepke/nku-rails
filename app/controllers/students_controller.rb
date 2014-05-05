class StudentsController < ApplicationController
<<<<<<< HEAD
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
      flash[:error] = "Shits borke!"
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
=======
  def new
    @student = Student.new
  end

  def create
    @student = Student.create!(student_params)
    redirect_to students_path, notice: "Successfully created #{@student.name}"
  end
  
  def show
    edit and return #call the edit method inside of this controller
  end

  def edit
    @student = Student.find(params[:id])
    if @student == current_student
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
>>>>>>> 5f65be8be2389aa9f73c42687bf21df2173839c4
