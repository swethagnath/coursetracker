class Registration < ApplicationRecord
	#validates_presence_of :students_id,:course_id registration and coolection_check_boxes
	belongs_to :student
	belongs_to :course
end
