require 'rails_helper'

RSpec.describe Conversation, type: :model do
  it { should belong_to(:user1) }
  it { should belong_to(:user2) }
  it { should have_many(:chats) }
end
