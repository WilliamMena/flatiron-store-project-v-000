class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.integer :inventory
      t.integer :price
      t.references :category, foreign_key: true
    end
  end
end
