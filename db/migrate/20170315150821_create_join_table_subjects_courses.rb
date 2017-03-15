class CreateJoinTableSubjectsCourses < ActiveRecord::Migration[5.0]
  def change
    create_join_table :subjects, :courses do |t|
      t.index [:subject_id, :course_id]
      t.index [:course_id, :subject_id]
    end
  end
end
