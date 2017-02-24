class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # :recoverable, :rememberable, :trackable,

  devise :database_authenticatable, :registerable, :validatable
  
  has_many :carts

  attr_accessor :current_cart

  def current_cart
    @cart
  end

  def current_cart=(cart)
    @cart = cart
  end
end
