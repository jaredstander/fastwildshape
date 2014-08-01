class CreateWildShapeForms < ActiveRecord::Migration
  def change
    create_table :wild_shape_forms do |t|
      t.string :name
      t.string :size
      t.string :creature_type
      t.string :creature_subtype
      t.string :base_speed
      t.string :abilities
      t.string :attacks
      t.integer :cmd_bonus_vs_trip

      t.timestamps
    end
  end
end
