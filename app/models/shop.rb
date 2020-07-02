class Shop < ApplicationRecord
  belongs_to :user
  has_many :favorites, dependent: :destroy
  belongs_to :town
  has_many :shop_images, dependent: :destroy
  accepts_nested_attributes_for :shop_images, allow_destroy: true

  # def favorite_by?(user)
  #   favorites.where(user_id: user.id).exists?
  # end

end
