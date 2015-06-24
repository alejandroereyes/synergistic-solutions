class Location < ActiveRecord::Base
  belongs_to :companies
  has_many :employees, :courses
end
