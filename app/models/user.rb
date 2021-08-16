class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :user_tags
  has_many :posts
  has_many :post_saved
  has_many :post_upvoted
  has_many :contacts


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
