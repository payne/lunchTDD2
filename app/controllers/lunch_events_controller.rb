class LunchEventsController < ApplicationController
  before_action :set_lunch_event, only: [:show, :edit, :update, :destroy, :announce]

  # GET /lunch_events
  # GET /lunch_events.json
  def index
    @lunch_events = LunchEvent.all
  end

  # GET /lunch_events/1
  # GET /lunch_events/1.json
  def show
  end

  def new
    @lunch_event = LunchEvent.new
  end

  # GET /lunch_events/1/edit
  def edit
  end

  # POST /lunch_events
   # POST /lunch_events.json
  def create
    @lunch_event = LunchEvent.new(lunch_event_params)

    respond_to do |format|
      if @lunch_event.save
        format.html { redirect_to @lunch_event, notice: 'Lunch event was successfully created.' }
        format.json { render :show, status: :created, location: @lunch_event }
      else
        format.html { render :new }
        format.json { render json: @lunch_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lunch_events/1
  # PATCH/PUT /lunch_events/1.json
  def update
    respond_to do |format|
      if @lunch_event.update(lunch_event_params)
        format.html { redirect_to @lunch_event, notice: 'Lunch event was successfully updated.' }
        format.json { render :show, status: :ok, location: @lunch_event }
      else
        format.html { render :edit }
        format.json { render json: @lunch_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lunch_events/1
  # DELETE /lunch_events/1.json
  def destroy
    @lunch_event.destroy
    respond_to do |format|
      format.html { redirect_to lunch_events_url, notice: 'Lunch event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def announce
    #TODO(MGP):
    puts "TODO(MGP) Logic to send a lunch announcment!"
    puts @lunch_event
    puts @lunch_event.lunchtime
    #TODO(MGP): Send email to each user in the group!
    #TODO(MGP): Put each user in the group into the lunch_event
    # Because who is in the group changes after lunch_events are assigned
    # and the group may have 100 people, but only five are choosen for lunch.
    UserMailer.lunch_announcement('john@beatles.com').deliver_now
    @lunch_event.announcement_email_sent=true
    @lunch_event.save
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lunch_event
      @lunch_event = LunchEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lunch_event_params
      params.require(:lunch_event).permit(:name, :lunchtime, :group_id, :announcement_email_sent)
    end
end
