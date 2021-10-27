class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: {
    in: %w[chinese italian japanese french belgian],
    message: '%<value>s is not a valid category'
  }

  validates_associated :reviews
end
