require 'rails_helper'

RSpec.describe Chat, type: :model do
  it { should belong_to(:sender) }
  it { should belong_to(:conversation) }
  it { should validate_presence_of(:message) }
end
