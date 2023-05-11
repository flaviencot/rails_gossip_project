class Gossip < ApplicationRecord
  belongs_to :user
  has_many :intertags
  has_many :comments
  has_many :likes, as: :imageable
  has_many :tags, through: :intertags
  validates :content, presence: true
  validates :title, presence: true, length: {minimum: 3, maximum: 14}
end
