class Cohort < ActiveRecord::Base
  belongs_to :codeclan
  has_many :students
  has_many :instructors, through: :codeclans
end
