class DropJoins < ActiveRecord::Migration[5.0]
  def change
    drop_join_table :courses, :instructors
    drop_join_table :courses, :subjects
  end
end
