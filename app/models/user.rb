class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :user_tags
  has_many :tags, through: :user_tags
  has_many :posts
  has_many :post_saved
  has_many :post_upvoted
  has_many :follower_contacts, class_name: "Contact", foreign_key: "following_id"
  has_many :following_contacts, class_name: "Contact", foreign_key: "follower_id"
  has_many :followers, through: :follower_contacts
  has_many :followings, through: :following_contacts

  has_one_attached :photo

  # include PgSearch::Model
  # pg_search_scope :search_by_first_name_and_last_name,
  #   against: [ :first_name, :last_name],
  #   using: {
  #     tsearch: { prefix: true }
  #   }



  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
