class CreateSubjectCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :subject_courses do |t|
    
      t.timestamps
    end
  end
end
