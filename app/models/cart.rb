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
    items << Item.find(item)
    save
  end
end
