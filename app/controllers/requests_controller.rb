class RequestsController < InheritedResources::Base
  before_action :set_request, only: [:show, :edit, :update, :destroy ]

  before_action :stop_reg_user, only: [:show, :index ]

  def stop_reg_user
    if current_user.is_dj != true
      redirect_to :back, notice: "Sorry. Only the DJ has access to that!"
    end
  end

  def index
    @requests = Request.where( :venue_id => (current_user.checkin.venue_id))
  end

  def new
    if current_user.is_checked_in == false
      redirect_to :back, notice: "You need to be checked in to a bar before you can request a song. Click on  'Find a Karaoke Bar' to check into first, then make your request."
    elsif
      @request = Request.new( :song_id => params[:song_id], user_id: (current_user.id), venue_id: (current_user.checkin.venue_id) )
      @request.user = current_user
      @request.available = true
      @request.has_requested = true
      @request.save
      redirect_to :root, notice: "Cool! You're request is in. The DJ will let you know when you're up!"
    end
  end

  def create
    @request = Request.new(request_params)

    respond_to do |format|
      if @request.save
        format.html { redirect_to @request, notice: 'request was successfully created.' }
        format.json { render :show, status: :created, location: @request }
      else
        format.html { render :new }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @request.available = false
    @request.has_requested = false
    @request.save
    redirect_to :requests, notice: "Okay DJ. This request has been removed from the request queue! The performer is now able to request a new song."
  end

  def show
  end

  private

    def set_request
      @request = Request.find(params[:id])
    end

    def request_params
      params.require(:request).permit(:available, :song_id, :venue_id)
    end
end

