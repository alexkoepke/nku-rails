class Student < ActiveRecord::Base
<<<<<<< HEAD
  has_many :attendances
  has_secure_password
  
  validates :name, presence: true
  validates :nickname, presence: true, length: { minimum: 3 }
  validates :email, presence: true
    
  def self.in_seat(seat, now=Date.today)
    present(now).where('attendances.seat = ?', seat)
  end
  
  def self.absent(now=Date.today)
    where.not(id: present(now))
  end
  
  def self.present(now=Date.today)
    joins(:attendances).where(attendances: {attended_on: now})
  end
  
  def avatar
    Avatar.from_student(self)
=======
  def avatar
    Avatar.from_student(self)
  end
  
  has_secure_password
  validates_uniqueness_of :email
  validates_presence_of :password, :on => :create
  
  def in_seat(seat, attended_on)
  end
 
  def absent(attended_on)
>>>>>>> 5f65be8be2389aa9f73c42687bf21df2173839c4
  end
end
