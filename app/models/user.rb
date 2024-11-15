class User < ApplicationRecord
  # Devise authentication modules
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  # Associations
  has_one :shop, dependent: :destroy
  has_many :items, through: :shop

  # Validations
  validates :email, presence: true, uniqueness: true
end
