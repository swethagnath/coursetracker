task :setup_data => :environment do 	
	5.times do
		Instructor.create(name:Faker::Name.first_name,bio:Faker::Lorem.paragraph,email: Faker::Internet.free_email)
	end
	Course.create(name:"Ruby on Rails",description: Faker::Lorem.paragraph,instructor_id: Instructor.all.sample.id)
	Course.create(name:"Introduction to programming",description: Faker::Lorem.paragraph,instructor_id: Instructor.all.sample.id)
 	Course.create(name:"Introduction to javascript",description: Faker::Lorem.paragraph,instructor_id: Instructor.all.sample.id)
 	Course.create(name:"JS+ Ajax",description: Faker::Lorem.paragraph,instructor_id: Instructor.all.sample.id)
 	Course.create(name:"mean",description: Faker::Lorem.paragraph,instructor_id: Instructor.all.sample.id)
 	100.times do
 		student = Student.create(name: Faker::Name.first_name,email:Faker::Internet.free_email,major:["CS","Is","EC","EEE","Mech"].sample,birthday:Faker::Date.birthday(18,30))
 		course_ids = Course.all.pluck(:id).sample(2)
 		course_ids.each do |course_id|
 				Registration.create(student_id: student.id,course_id: course_id)
 		end
 	end
end