class EventsController < ApplicationController
  before_action :set_user
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  # GET /events
  # GET /events.json
  def index
    @events = @user.events.all #Event.all
  end

  # GET /events/1
  # GET /events/1.json
  def show
    @event = @user.events.find(params[:id])
  end

  # GET /events/new
  def new
    @event = @user.events.new
  end

  # GET /events/1/edit
  def edit
    @event = @user.events.find(params[:id])
  end

  # POST /events
  # POST /events.json
  def create
    @event = @user.events.new(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to user_event_path(@event.user_id, @event), notice: 'Event was successfully created.' }
        format.json { render action: 'show', status: :created, location: @event }
      else
        format.html { render action: 'new' }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to user_event_path(@event.user_id, @event), notice: 'Event was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @user.events.destroy(params[:id])
    respond_to do |format|
      format.html { redirect_to user_events_path(@user) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @events = @user.events
      @event = @user.events.new
    end

    def set_user
      @user = current_user
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:id, :location, :time, :deadline, :min_number, :max_number, :event_name, :event_desc)
    end
end
