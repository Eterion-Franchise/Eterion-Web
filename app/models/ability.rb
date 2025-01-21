class Ability < ApplicationRecord
  has_one_attached :cover

  validates :name, presence: true, uniqueness: true, length: {minimum: 2, maximum: 64}
  validates :description, presence: true
  validates :lvl_req, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 1}
  validates :whims_req, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 0}
end
