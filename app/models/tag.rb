class Tag < ApplicationRecord

  enum category: [ :business, :tech, :psychology ]
end
