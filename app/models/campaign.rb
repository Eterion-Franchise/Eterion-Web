class Campaign < ApplicationRecord
  belongs_to :saga
  has_one_attached :cover

  validates :title, presence: true, uniqueness: true, length: {minimum: 2, maximum: 64}
  validates :agenda, presence: true
  validates :duration_hrs, numericality: {only_integer: true, greater_than: 0}
  validates :duration_min, numericality: {only_integer: true, greater_than: 0}
end
