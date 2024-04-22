class Chat < ApplicationRecord
  belongs_to :sender, class_name: 'User'
  belongs_to :conversation

  validates_presence_of :message
end
