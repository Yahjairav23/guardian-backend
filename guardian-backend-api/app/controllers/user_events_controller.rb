class UserEventsController < ApplicationController
    def index
        user_events = UserEvent.all 
        render json: user_events
    end

    def create
        user_event = UserEvent.create(event_id: params[:event_id], user_id: params[:user_id])
        render json: user_event, include: [:event] 
    end
end
