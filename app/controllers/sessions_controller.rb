class SessionsController < ApplicationController
  def create
    @student = Student.find_by_email(params[:email])
    if @student && @student.authenticate(params[:password])
      session[:student_id] = student.id
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
end
