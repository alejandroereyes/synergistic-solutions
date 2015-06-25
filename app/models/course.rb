class Course < ActiveRecord::Base
  has_many :employee_courses
  has_many :employees, through: :employee_courses
  belongs_to :location
end
