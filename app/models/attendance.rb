class Attendance < ActiveRecord::Base
  belongs_to :student
  
  validates :seat, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 4 }
  #validates_numericality_of :seat, :only_integer => true, message: ":   Please enter a seat 1 - 4 only"
  #validates_numericality_of :seat, greater_than_or_equal_to: 1, message: ":   Please enter a seat 1 - 4 only"
  #validates_numericality_of :seat, less_than_or_equal_to: 4, message: ":   Please enter a seat 1 - 4 only"
  
  
  
end