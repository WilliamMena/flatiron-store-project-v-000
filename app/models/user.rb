class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # :recoverable, :rememberable, :trackable,

  devise :database_authenticatable, :registerable, :validatable
  
  has_many :carts
  belongs_to :current_cart, class_name: "Cart"

  # attr_accessor :current_cart

  # def current_carts
  #   @cart
  # end

  # def current_cart=(cart)
  #   @cart = cart
  # end
end
