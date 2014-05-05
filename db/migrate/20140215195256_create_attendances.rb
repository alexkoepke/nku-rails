class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.integer  :seat
      t.boolean  :attendance
      t.date     :attended_on
      t.datetime :now
    end
  end
end
