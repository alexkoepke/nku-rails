class AddPasswordAndConfirmPassword < ActiveRecord::Migration
  def change
    add_column :students, :password, :string
    remove_column :students, :confirm_password
    add_column :students, :password_confirmation
  end
end
