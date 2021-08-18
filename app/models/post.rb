class Post < ApplicationRecord
  belongs_to :user
  has_many :post_tags
  has_many :tags, through: :post_tags
  has_many :post_saved
  has_many :post_upvoted


  enum category: [ :my_ideas, :ideas_from_others, :freestyle ]

  def self.category_label(label)
    case label[1]
      when 0
        return "My Ideas"
      when 1
        return "Others' Ideas"
      when 2
        return "Freestyle"
      end
  end

  # include PgSearch::Model
  # multisearchable against: [:title]
end
