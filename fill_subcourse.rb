require 'json'

courses_json = JSON.parse(File.read('course.json'))

courses_json.each do |course|
  # for each subject in the course
  @course = Course.find_by(code: course['code'])
  puts @course.code
  puts course['subjects'].to_s
  if course['subjects'] == nil then
    next
  else
    course['subjects'].each do |subject|
      @subject = Subject.find_by(subj_id: subject['id'])
      if @subject == nil
        next
      end
      puts @subject.subj_id
      puts @subject.id
      @sub_course = SubjectCourse.new
      @sub_course.course_id = @course.id
      @sub_course.subject_id = @subject.id
      @sub_course.save!
    end
  end
end
