class Tag < ApplicationRecord
  has_many :user_tags
  enum category: [ :business, :tech, :psychology ]

  include PgSearch::Model
  multisearchable against: [:name, :category]
end
