class Student < ActiveRecord::Base
  def avatar
    Avatar.from_student(self)
  end
  
  has_secure_password
  attr_accessible :email, :password, :password_confirmation, :name, :nickname, :image_url
  validates_uniqueness_of :email
end
