require 'json'

instructors_json = JSON.parse(File.read('instructor.json'))

instructors_json.each do |instructor|
  @instructor = Instructor.new
  @instructor.first = instructor['first']
  @instructor.middle = instructor['middle']
  @instructor.last = instructor['last']
  @instructor.email = instructor['email']
  @instructor.save!
end
