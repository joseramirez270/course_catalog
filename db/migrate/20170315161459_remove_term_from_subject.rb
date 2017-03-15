class RemoveTermFromSubject < ActiveRecord::Migration[5.0]
  def change
    remove_column :subjects, :term, :string
  end
end
