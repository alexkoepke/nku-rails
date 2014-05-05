class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
<<<<<<< HEAD
  def current_student
    @current_student ||= Student.find_by(id: session[:student_id]) if session[:student_id].present?
  end
  helper_method :current_student
  
=======
  private
  
  def current_student
    @current_student ||= Student.find(session[:student_id]) if session[:student_id]
  end
  helper_method :current_user
>>>>>>> 5f65be8be2389aa9f73c42687bf21df2173839c4
end
