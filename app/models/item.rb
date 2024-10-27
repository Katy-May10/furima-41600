class Item < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :status
  belongs_to :shippingfee
  belongs_to :prefecture
  belongs_to :shippingday

  with_options presence: true do
    validates :image
    validates :name
    validates :explanation
  end

  validates :price, presence: true, format: { only_integer: true, message: "can't be blank" }
  validates :price, numericality: { greater_than_or_equal_to: 300, less_than_or_equal_to: 9_999_999 }

  with_options numericality: { other_than: 0, message: "can't be blank" } do
    validates :category_id
    validates :status_id
    validates :shipping_fee_id
    validates :prefecture_id
    validates :shipping_day_id
  end
end
