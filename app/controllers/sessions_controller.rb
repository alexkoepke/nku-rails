class SessionsController < ApplicationController
  def new
  end
  
  def create
<<<<<<< HEAD
    @student = Student.find_by_email(params[:session][:email])
    if @student && @student.authenticate(params[:session][:password])
      session[:student_id] = @student.id
      redirect_to students_path, notice: "Logged in!"
    else
      flash[:error] = "Invalid email or password"
      render "new"
    end
  end

  def destroy
    session[:student_id] = nil
    redirect_to students_path, notice: "Logged out!"
  end
  
  private

  def session_params
    params.require(:session).permit(:email, :password)
  end
=======
    @student = Student.find_by_email(params[:email])
    if @student && @student.authenticate(params[:password])
      session[:student_id] = @student.id
      redirect_to students_path, notice: "Logged in as #{@student.name}"
    else
      flash.now.alert = "Email or password is invalid"
      render "new"
    end
  end
  
  def destroy
    session[:student_id] = nil
    redirect_to root_url, notice: "Logged out!"
  end
  
>>>>>>> 5f65be8be2389aa9f73c42687bf21df2173839c4
end
