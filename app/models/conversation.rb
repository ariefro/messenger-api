class Conversation < ApplicationRecord
    belongs_to :user1, class_name: 'User', foreign_key: 'user1_id'
    belongs_to :user2, class_name: 'User', foreign_key: 'user2_id'
    has_many :chats, dependent: :destroy

    validates_presence_of :user1_id, :user2_id
end
