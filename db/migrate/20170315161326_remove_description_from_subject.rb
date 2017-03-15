class RemoveDescriptionFromSubject < ActiveRecord::Migration[5.0]
  def change
    remove_column :subjects, :description, :text
  end
end
