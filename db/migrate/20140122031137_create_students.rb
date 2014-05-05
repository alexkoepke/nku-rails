class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :phonetic_name
      t.string :email
      t.string :image_url
      t.string :password_digest
    end
  end
end
