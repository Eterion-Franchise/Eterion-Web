class User < ApplicationRecord
  before_validation :generate_tag, on: :create
  after_initialize :default_values

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  validates :name, presence :true, uniqueness: false, length: {minimum:2, maximum:16}
  validates :is_gm, inclusion: {in: [true, false]}

  has_one_attached :avatar

  private
  def generate_tag
    if self.tag.nil?
      loop do
        random_number = rand(1000..9999)
        name_with_tag = "#{self.name}##{random_number}"
        break unless User.exists?(name_with_tag: name_with_tag)
      end
    end
  end

  def default_values
    if self.new_record? and self.is_gm.nil?
      self.is_gm = false
    end
  end
end
