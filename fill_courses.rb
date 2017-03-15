require 'json'

courses_json = JSON.parse(File.read('course.json'))

courses_json.each do |course|
  @course = Course.new
  @course.name = course['name']
  @course.code = course['code']
  @course.credits = course['credits']
  @course.description = course['description']
  @course.save!
end
