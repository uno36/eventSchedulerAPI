class Api::V1::EventsController < ApplicationController
  before_action :authenticate_user!

  # POST /api/v1/events
  def create
      @event = current_user.events.build(event_params)

      if @event.save
        render json: @event, status: :created
      else
        render json: @event.errors, status: :unprocessable_entity
      end
    end

    # GET /api/v1/events
    def index
      @events = Event.all
      render json: @events
    end

    # GET /api/v1/events/:id
    def show
      @event = Event.find(params[:id])
      render json: @event
    end

    # PATCH /api/events/:id
    def update
      @event = current_user.events.find(params[:id])

      if @event.update(event_params)
        render json: @event
      else
        render json: @event.errors, status: :unprocessable_entity
      end
    end

    # DELETE /api/events/:id
    def destroy
      @event = current_user.events.find(params[:id])
      @event.destroy
      head :no_content
    end

    private

    def event_params
      params.require(:event).permit(:title, :description, :date, :time)
    end
  end

end
