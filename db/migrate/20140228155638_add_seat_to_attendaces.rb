class AddSeatToAttendaces < ActiveRecord::Migration
  def change
    add_column :attendances, :seat, :string
  end
end
