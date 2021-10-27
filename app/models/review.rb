class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, numericality: { only_integer: true }, inclusion: {
    in: (0..5),
    message: 'Please select a rating from 0 to 5'
  }
end
