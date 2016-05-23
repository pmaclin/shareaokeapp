class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]

  before_action :stop_reg_user, only: [:index, :show]

  def stop_reg_user
    if current_user.is_admin != true
      redirect_to :back, notice: "Go to the Performance_Queue and click on a performance to leave a review."
    end
  end

  # GET /reviews
  # GET /reviews.json
  def index
     if current_user.present?
      @reviews = current_user.reviews
    else
      @reviews = Review.all
   end
  end

  # GET /reviews/1
  # GET /reviews/1.json
  def show
  end

  # GET /reviews/new
  def new
    @review = Review.new(:performance_id => params[:performance_id])
  end

  # GET /reviews/1/edit
  def edit
  end

  # POST /reviews
  # POST /reviews.json
  def create
    @review = Review.find_by({ :performance_id => params[:performance_id] })


    # @r = Review.find_by({ :matched => '@review.batch.matched', :batch_id => '@review.batch.id' })
    # @review = Review.new(review_params)
    # @review.user = current_user

    @review = Review.new(review_params)
    @review.user = current_user

    respond_to do |format|
      if @review.save
        format.html { redirect_to :performances, notice: 'Review was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /reviews/1
  # PATCH/PUT /reviews/1.json
  def update
    respond_to do |format|
      if @review.update(review_params)
        format.html { redirect_to @review, notice: 'Review was successfully updated.' }
        format.json { render :show, status: :ok, location: @review }
      else
        format.html { render :edit }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reviews/1
  # DELETE /reviews/1.json
  def destroy
    @review.destroy
    respond_to do |format|
      format.html { redirect_to reviews_url, notice: 'Review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @review = Review.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def review_params
      params.require(:review).permit(:headline, :content, :rating, :performance_id )
    end
end
