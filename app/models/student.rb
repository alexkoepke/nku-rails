class Student < ActiveRecord::Base
  def avatar
    Avatar.from_student(self)
  end
  
  has_secure_password
  validates_uniqueness_of :email
  validates_presence_of :password, :on => :create
  
  def in_seat(seat, attended_on)
  end
 
  def absent(attended_on)
  end
end
