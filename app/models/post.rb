class Post < ApplicationRecord
  belongs_to :user
  has_many :post_tags
  has_many :tags, through: :post_tags
  has_many :post_saved
  has_many :post_upvoted


  enum category: [ :my_ideas, :ideas_from_others, :freestyle ]

  # include PgSearch::Model
  # multisearchable against: [:title]
end
