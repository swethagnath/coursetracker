class Course < ApplicationRecord
	has_many :registrations
	has_many :students,through: :registrations
	validates_presence_of :name,:instructor_id,:description
	belongs_to :instructor
end
