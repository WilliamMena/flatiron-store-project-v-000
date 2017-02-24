class Item < ActiveRecord::Base
  belongs_to :category
  has_many :line_items
  #not sure how useful the next line is. I don't see where I would use a, carts method on a specific item.
  has_many :carts, through: :line_items


  def self.available_items
    available = []
    all.each do |i|
      available << i if i.inventory > 0
    end
    available
  end
end
