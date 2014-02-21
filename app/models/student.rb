class Student < ActiveRecord::Base
  validates :name, presence: true
  validates :nickname, presence: true, length: { minimum: 3 }
  validates :email, presence: true
end
