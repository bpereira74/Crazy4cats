class Publication < ApplicationRecord
  devise :database_authenticatable, :registerable,
 :recoverable, :rememberable, :validatable
      belongs_to :user
  has_one_attached :image
  has_many :reactions
  has_many :users, through: :reactions
end
