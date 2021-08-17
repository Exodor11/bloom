class Tag < ApplicationRecord
  has_many :user_tags
  enum category: [ :business, :tech, :psychology ]
end
