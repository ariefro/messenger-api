class ConversationsController < ApplicationController
    # before_action :set_current_user
    before_action :set_conversation, only: %i[show]

    # GET /conversations
    def index
      conversations = Conversation.all
      json_response(conversations)
    end

    # GET "/conversations/#{convo_id}"
    def show
        json_response(@conversation)
    end


    private

    def set_conversation
        @conversation = Conversation.find(params[:id])
    end
  end