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
    validates :name
    validates :explanation
    validates :category_id
    validates :status_id
    validates :shipping_fee_id
    validates :prefecture_id
    validates :shipping_day_id
    validates :price
  end
end
