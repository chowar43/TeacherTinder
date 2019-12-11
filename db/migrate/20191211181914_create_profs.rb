class CreateProfs < ActiveRecord::Migration[5.2]
  def change
    create_table :profs do |t|
      t.string :name
      t.string :time

      t.timestamps
    end
  end
end
