class ClassPathAbility < ApplicationRecord
  belongs_to :player_class
  belongs_to :player_class_path
  belongs_to :ability
end
