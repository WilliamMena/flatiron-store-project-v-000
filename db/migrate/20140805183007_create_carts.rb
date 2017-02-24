class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      #unsure about this method as well
      # t.integer :total
      t.integer :user_id
      t.string :status, default: "PENDING"
    end
  end
end
