class Review < ApplicationRecord
  belongs_to :user
  belongs_to :product
  validates :topic, :description, presence: true
  def self.find_latest
    order('created_at DESC').limit(1)
  end

  def self.find_reviews(product_id)
    where(product_id: product_id)
  end
end
