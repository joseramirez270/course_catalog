class SearchController < ApplicationController
  def index
    @subjects = Subject.all.map{ |subj| [ subj.name, subj.id ]}
    @subjects.unshift nil

    if params[:course] != '' and params[:subj_id] != ''
      course_ids = SubjectCourse.where(subject_id: params[:subj_id]).map {|subcourse| subcourse.course_id}
      @courses = []
      course_ids.each do |c_id|
        @courses.push(*Course.where(id: c_id, name: params[:course]))
      end
    elsif params[:subj_id] != ''
      course_ids = SubjectCourse.where(subject_id: params[:subj_id]).map {|subcourse| subcourse.course_id}
      @courses = []
      course_ids.each do |c_id|
        @courses.push(Course.find_by_id(c_id))
      end
    elsif params[:course] != ''
      @courses = Course.where(name: params[:course])
      puts @courses
    end
  end

  def results
    if params[:course] != '' and params[:subj_id] != ''
      course_ids = SubjectCourse.where(subject_id: params[:subj_id]).map {|subcourse| subcourse.course_id}
      @courses = []
      course_ids.each do |c_id|
        @courses.push(*Course.where(id: c_id, name: params[:course]))
      end
    elsif params[:subj_id] != ''
      course_ids = SubjectCourse.where(subject_id: params[:subj_id]).map {|subcourse| subcourse.course_id}
      @courses = []
      course_ids.each do |c_id|
        @courses.push(Course.find_by_id(c_id))
      end
    elsif params[:course] != ''
      @courses = Course.where(name: params[:course])
      puts @courses
    end
  end
end
