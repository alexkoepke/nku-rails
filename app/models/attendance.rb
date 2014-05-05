class Attendance < ActiveRecord::Base
<<<<<<< HEAD
  belongs_to :student
  
  validates :attended_on, uniqueness: { scope: :student,
    message: "You can only attend once a day!" }
  
  validates :seat, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 4 }
  #validates_numericality_of :seat, :only_integer => true, message: ":   Please enter a seat 1 - 4 only"
  #validates_numericality_of :seat, greater_than_or_equal_to: 1, message: ":   Please enter a seat 1 - 4 only"
  #validates_numericality_of :seat, less_than_or_equal_to: 4, message: ":   Please enter a seat 1 - 4 only"
  
  
  
end
=======
end
>>>>>>> 5f65be8be2389aa9f73c42687bf21df2173839c4
