class PlayerClass < ApplicationRecord
  has_one_attached :cover

  validates :name, presence: true, uniqueness: true, length: {minimum: 2, maximum: 64}
  validates :description, presence: true
end
