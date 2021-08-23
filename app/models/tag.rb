class Tag < ApplicationRecord
  has_many :user_tags
  enum category: [ :business, :technology, :finance, :entrepreneurship, :sciences, :psychology, :politics, :health, :philosophy, :sociology ]

  # include PgSearch::Model
  # multisearchable against: [:category]
end
