class Stat < ApplicationRecord
  validates :name, presence: true, uniqueness: true, length: {minimum: 2, maximum: 64}
end
