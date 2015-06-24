class Company < ActiveRecord::Base
  has_many :locations, :employees
  has_many :courses, through: :locations
end
