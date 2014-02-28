class Attendance < ActiveRecord::Base
  belongs_to :student
  
  validates_numericality_of :seat, :only_integer => true
  validates_inclusion_of :seat, :in => 1..4, message: ":   Please enter a seat 1 - 4 only"
  
end