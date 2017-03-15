class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :term
      t.string :code
      t.string :name
      t.text :description
      t.float :credits

      t.timestamps
    end
  end
end
