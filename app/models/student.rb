class Student < ActiveRecord::Base
  has_secure_password
  
  validates :name, presence: true
  validates :nickname, presence: true, length: { minimum: 3 }
  validates :email, presence: true
  
  def avatar
    Avatar.from_student(self)
  end
end
