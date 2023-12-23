class Api::V1::EventsController < ApplicationController
  # before_action :authenticate_user!

  # POST /api/v1/events
  def create
  @event = current_user.events.build(event_params)

  if @event.save
    render json: { message: 'Event created successfully', event: @event }, status: :created
  else
    render json: { error: 'Failed to create event', errors: @event.errors }, status: :unprocessable_entity
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
  @event = current_user.events.find_by(id: params[:id])

  if @event
    if @event.update(event_params)
      render json: { message: 'Event updated successfully' }, status: :ok
    else
      render json: { error: 'Failed to update event', errors: @event.errors }, status: :unprocessable_entity
    end
  else
    render json: { error: 'Event not found or unauthorized' }, status: :not_found
  end
end


  # DELETE /api/events/:id
  def destroy
  @event = current_user.events.find_by(id: params[:id])

  if @event
    @event.destroy
    render json: { message: 'Event deleted successfully' }, status: :ok
  else
    render json: { error: 'Event not found or unauthorized' }, status: :not_found
  end
end


  private

  def event_params
    params.require(:event).permit(:title, :description, :date, :time)
  end
end
