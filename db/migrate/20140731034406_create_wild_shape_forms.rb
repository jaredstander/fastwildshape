class CreateWildShapeForms < ActiveRecord::Migration
  def change
    create_table :wild_shape_forms do |t|
      t.string :name
      t.string :size
      t.string :type
      t.string :subtype
      t.string :abilities
      t.string :attacks

      t.timestamps
    end
  end
end
