class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :name
      t.integer :roll_number
      t.string :house
      t.timestamps
    end
  end
end
