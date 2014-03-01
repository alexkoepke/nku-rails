class AttendancesController < ApplicationController
  def new
    @attendance = Attendance.new
  end
  
  def create
    
    if @student = current_student
      @attendance = Attendance.new
      @attendance.seat = params[:attendance][:seat]
      @attendance.attended_on = Date.today
      @attendance.student_id = @student.id
      if @attendance.save
        redirect_to attendances_path, notice: "#{@student.name} you are attending in seat #{@attendance.seat} and logged in"
      else
        render "new"
      end
    else
      redirect_to students_path, notice: "You need to login to be marked in attendance"
    end
  end
  
  def index
    @attendances = Attendance.all
  end
  
end