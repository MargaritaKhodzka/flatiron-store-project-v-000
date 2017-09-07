class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :carts
  has_one :current_cart, class_name: 'Cart'

  def remove_cart
    self.update(current_cart: nil)
    self.save
  end

end
