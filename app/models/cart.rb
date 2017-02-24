class Cart < ActiveRecord::Base
  has_many :line_items
  has_many :items, through: :line_items
  belongs_to :user

  def total
    total = 0
    items.each do |item|
      total += item.price
    end
    total
  end

  def add_item(item) #need to keep working on this
    if items.include?(Item.find(item))
      current_item = LineItem.find_by(cart_id: self.id, item_id: item)
      current_item.quantity += 1
      current_item
    else
      LineItem.new(cart_id: self.id, item_id: item)
    end
  end
end
