class Saga < ApplicationRecord
  has_one_attached :logo

  validates :title, presence: true, length: {minimum: 2, maximum: 64}
  validates :description, presence: true
end
