class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.string :race
      t.string :size
      t.integer :level
      t.integer :strength
      t.integer :dexterity

      t.timestamps
    end
  end
end
