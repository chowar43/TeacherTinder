class CreateInstructs < ActiveRecord::Migration[5.2]
  def change
    create_table :instructs do |t|
      t.string :name
      t.string :category
      t.string :credits
      t.string :style

      t.timestamps
    end
  end
end
