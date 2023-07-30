class Publication < ApplicationRecord
  devise :database_authenticatable, :registerable,
 :recoverable, :rememberable, :validatable
      belongs_to :user
  has_one_attached :image
  has_many :reactions dependent: :destroy
  has_many :users, through: :reactions

  def count_with_kind(arg)
      number = self.reactions.where(kind: arg).count
      return "#{arg} - #{number}"
      end

      def find_kind_user_relation(user)
      self.reactions.find_by(user_id: user.id).kind
      end
end
