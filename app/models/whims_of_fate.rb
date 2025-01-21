class WhimsOfFate < ApplicationRecord
  has_one_attached :cover

  validates :name, presence: true, uniqueness: true, length: {minimum: 2, maximum: 64}
  validates :description, presence: true
  validates :resolve_up, presence: true
  validates :resolve_down, presence: true
end
