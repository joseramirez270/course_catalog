class AddColumnsToSubjectCourses < ActiveRecord::Migration[5.0]
  def change
    add_column :subject_courses, :subject_id, :integer
    add_column :subject_courses, :course_id, :integer
  end
end
