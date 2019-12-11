class CreateInstructors < ActiveRecord::Migration[5.2]
  def change
    create_table :instructors do |t|
      t.string :name
      t.string :type
      t.string :credits
      t.string :style

      t.timestamps
    end
  end
end
