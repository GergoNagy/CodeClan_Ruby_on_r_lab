class Student < ActiveRecord::Base
  belongs_to :cohort
  has_one :codeclan, through: :cohort
end
