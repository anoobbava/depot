class Product < ApplicationRecord
  validates :title, :description, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0.01 }
  validates :title, uniqueness: true
  has_many :line_items
  has_many :reviews
  mount_uploader :avatar, AvatarUploader
  ratyrate_rateable "cost", "durability", "service"

  def self.find_latest_product
    order('created_at DESC').limit(1)
  end
end
