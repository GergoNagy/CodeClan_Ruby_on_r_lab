class CodeClan < ActiveRecord::Base
    has_many :instructors
    has_many :cohorts
    has_many :students, through: :cohorts
end
