class AddStudentIdTooAttendance < ActiveRecord::Migration
  def change
    add_column :attendances, :student_id, :integer
    add_column :attendances, :attended_on, :date
    add_column :attendances, :now, :datetime
  end
end
