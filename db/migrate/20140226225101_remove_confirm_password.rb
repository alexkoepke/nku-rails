class RemoveConfirmPassword < ActiveRecord::Migration
  def change
    remove_column :students, :password, :string
    remove_column :students, :confirm_password 
  end
end
