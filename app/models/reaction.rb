class Reaction < ApplicationRecord
  belongs_to :publication
  belongs_to :user

  validates :kind, acceptance: {
 accept: %w[like dislike boring neutral uninterested interested],
 }

 
     
end
