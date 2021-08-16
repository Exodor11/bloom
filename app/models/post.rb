class Post < ApplicationRecord
  belongs_to :user
  has_many :post_tags
  has_many :post_saved
  has_many :post_upvoted
end
