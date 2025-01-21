class Character < ApplicationRecord
  after_initialize :set_defaults

  belongs_to :player_class
  has_one_attached :avatar

  validates :name, presence: true, uniqueness: true, length: {minimum: 2, maximum: 64}
  validates :description, presence: true
  validates :lvl, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 1}
  validates :gold, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 0}
  
  enum :status => [:alive, :dead]

  private
  def set_defaults
    if self.new_record? and self.lvl.nil?
      self.lvl = 1
    end
    if self.new_record? and self.gold.nil?
      self.gold = 0
    end
  end
end
