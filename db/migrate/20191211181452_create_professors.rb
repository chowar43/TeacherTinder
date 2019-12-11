class CreateProfessors < ActiveRecord::Migration[5.2]
  def change
    create_table :professors do |t|
      t.string :name
      t.string :time

      t.timestamps
    end
  end
end
