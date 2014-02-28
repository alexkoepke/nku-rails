class RemoveSeatFromAttendance < ActiveRecord::Migration
  def change
    remove_column :attendances, :seat, :string
  end
end
