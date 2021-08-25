class Post < ApplicationRecord
  belongs_to :user
  has_many :post_tags
  has_many :tags, through: :post_tags
  has_many :post_saved
  has_many :post_upvoted
  has_many :users, through: :post_upvoted

  validates :title, presence: true
  validates :description, presence: true
  validates :text_action_text, presence: true

  has_one_attached :photo

  has_rich_text :text_action_text


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
  #   multisearchable against: [:title]
  #   #  against: [ :title ],
  #   # using: {
  #   #   tsearch: { prefix: true } # <-- now `superman batm` will return something!
  #   # }

    include PgSearch::Model
    pg_search_scope :search_by_title,
    against: [ :title ],
    using: {
      tsearch: { prefix: true }
    }
end
