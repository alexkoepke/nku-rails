class Student < ActiveRecord::Base
  def avatar
    Avatar.from_student(self)
  end
  
  has_secure_password
  validates_uniqueness_of :email
end
