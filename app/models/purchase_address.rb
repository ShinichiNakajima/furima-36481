class PurchaseAddress
  include ActiveModel::Model
  attr_accessor :user_id, :item_id, :postal_code, :prefecture_id, :city, :street_address, :optional_address, :phone_number, :purchase_id

  # validate some
  with_options presence: true do
    validates :user_id
    validates :item_id
    validates :postal_code, format: { with: /\A[0-9]{3}-[0-9]{4}\z/, message: "is invalid. Enter it as follows (e.g. 123-4567)" }
    validates :prefecture_id, numericality: { other_than: 1, message: "can't be blank" }
    validates :city
    validates :street_address
    validates :phone_number, length: {minimum: 10, maximum: 11}
    validates :phone_number, format: { with: /\A[0-9]+\z/, message: "is invalid. Input only number" }
    validates :purchase_id
  end

  # validate others
  # validates :optional_address

  def save
    purchase = Purchase.create(user_id: user_id, item_id: item_id)
    Address.create(postal_code: postal_code, prefecture_id: prefecture_id, city: city, street_address: street_address, optional_address: optional_address, phone_number: phone_number, purchase_id: purchase.id)
  end

end