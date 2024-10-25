class Item < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category

  validates :name,            presence: true
  validates :explanation,     presence: true
  validates :category_id,     presence: true
  validates :status_id,       presence: true
  validates :shipping_fee_id, presence: true
  validates :prefecture_id,   presence: true
  validates :shipping_day_id, presence: true
  validates :price,           presence: true
end
