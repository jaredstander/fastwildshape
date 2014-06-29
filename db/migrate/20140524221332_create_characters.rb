class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.string :size
      t.integer :level
      t.integer :str
      t.integer :dex
      t.integer :con
      t.integer :bab
      t.integer :total_ac
      t.integer :touch_ac
      t.integer :flatfooted_ac
      t.integer :stackable_armor_ac
      t.integer :is_druid
      t.string :milestone_levels

      t.timestamps
    end
  end
end
