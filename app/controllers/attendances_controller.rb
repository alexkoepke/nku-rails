class AttendancesController < ApplicationController
  
  def index
    @attendance = Attendance.new
  end
  
  def news
  end
  
  def create
    @student = current_student
    if @student
      redirect_to attendances_path, notice: 'Here!'
    else 
      redirect_to students_path, notice: 'You have to login'
    end
  end
  
  def edit
  end
end