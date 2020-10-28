class AddTeacherIdToSubjects < ActiveRecord::Migration[5.0]
 def change
  add_column :subjects, :teacher_id, :integer
  add_index  :subjects, :teacher_id
  end
end
