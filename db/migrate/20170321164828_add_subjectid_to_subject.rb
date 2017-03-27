class AddSubjectidToSubject < ActiveRecord::Migration[5.0]
  def change
    add_column :subjects, :subj_id, :string
  end
end
