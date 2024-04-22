class MessagesController < ApplicationController
    before_action :set_conversation, only: %i[index]

    # GET /conversations/#{convo_id}/messages
    def index
        messages = @conversation.chats
        json_response(messages)
    end

    def create
    end

    private

    def set_conversation
        @conversation = Conversation.find(params[:conversation_id])
    end
end
