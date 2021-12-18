class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :sales_status
  belongs_to :shipping_fee_status
  belongs_to :prefecture
  belongs_to :scheduled_delivery

  belongs_to       :user
  has_one          :order
  has_one_attached :image

  
  validates :image, :name, :info, presence: true

  validates :price, presence: true
  validates :price, format: { with: /\A[0-9]+\z/, message: 'is invalid. Input half-width characters' }
  validates :price, inclusion: { in: 300..9_999_999, message: 'is out of setting range' }

  validates :category_id, :sales_status_id, :shipping_fee_status_id, :prefecture_id, :scheduled_delivery_id,
            numericality: { other_than: 1, message: "can't be blank" }
  validates :category_id, :sales_status_id, :shipping_fee_status_id, :prefecture_id, :scheduled_delivery_id, presence: true
end
