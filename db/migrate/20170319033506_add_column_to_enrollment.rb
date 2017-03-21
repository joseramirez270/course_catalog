class AddColumnToEnrollment < ActiveRecord::Migration[5.0]
  def change
    add_column :enrollments, :user_id, :integer
    add_column :enrollments, :course_id, :integer
  end
end
