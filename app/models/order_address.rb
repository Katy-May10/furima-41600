class OrderAddress
  include ActiveModel::Model
  attr_accessor :user_id, :item_id, :postal_code, :prefecture_id, :city, :house_number, :building_name, :phone, :order_id

  validates :postal_code, presence: true,
                          format: { with: /\A\d{3}-\d{4}\z/, message: 'is invalid. Enter it as follows (e.g. 123-4567)' }
  validates :prefecture_id, numericality: { other_than: 0, message: "can't be blank" }

  with_options presence: true do
    validates :city
    validates :house_number
  end

  VALID_PHONE_REGEX = /\A\d{2,4}-\d{2,4}-\d{3,4}\z/

  validates :phone, presence: true, format: { with: VALID_PHONE_REGEX, message: 'is too short' }
  validates :phone, numericality: { only_integer: true, message: 'is invalid. Input only number' }

  def save
    order = Order.create(user_id: user, item_id: item)
    Address.create(postal_code: postal_code, prefecture_id: prefecture_id, city: city, house_number: house_number,
                   building_name: building_name, phone: phone, order_id: order)
  end
end
