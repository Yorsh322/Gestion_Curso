class Calendar < ActiveRecord::Base
  has_one :folder
  has_many :semesters
  has_many :professors
  has_many :courses
end
