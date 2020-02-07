class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.string :price
      t.string :image
      t.boolean :active
      t.integer :inventory
      t.references :merchant, foreign_key: true
      t.timestamps
    end
  end
end
