class User < ApplicationRecord
  # encrypt password
  has_secure_password

  has_many :conversations, foreign_key: :user1_id, dependent: :destroy
  has_many :conversations_as_user2, class_name: 'Conversation', foreign_key: :user2_id, dependent: :destroy

  validates_presence_of :name, :email, :password_digest, :photo_url
end
