class AttendancesController < ApplicationController
  
  def index
    @attendance = Attendance.new
  end
  
  def new
    #we created a method @current_student last assignment to help detect if they are logged in
    #if they are logged in, have them attend
    #@attendance = Attendance.new
    #@attendance.seat = params[:attendance][:seat]
    #if @student = current_student
    #  #used this line from students controller and reapplied it
    #  @attendance = Attendance.new      
    #else #redirect to home
    #  redirect_to students_home
    #end
  end
  
  def create
    if @student && @student == curent_student
    
    else 
      redirect_to students_path, notice: 'You have to log in'
    end
  end
  
  def edit
  end
end