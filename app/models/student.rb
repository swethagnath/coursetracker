class Student < ApplicationRecord
	validates_presence_of :name,:email,:major,:birthday
	has_many :registrations
	has_many :courses,through: :registrations
end
