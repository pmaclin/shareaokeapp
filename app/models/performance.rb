class Performance < ActiveRecord::Base
  belongs_to :user
  belongs_to :song
  belongs_to :venue

  has_many :reviews

  validates :user, :presence => true
  validates :song, :presence => true
  validates :venue, :presence => true

  # <%= @performance.reviews.count %>
  def ave_rating
    @ave_rating = @performance.reviews.reduce(:+).to_f / @performance.reviews.size
  end


# initializes @user and selects correct request
  def remove_request
    @request = Request.find_by(:available => true, :user_id => self.user_id)
    if @request.available == true
        @request.available = false
        @request.has_requested = false
    end
    @request.save
  end


  def request
    Request.where( :available => true )
  end

  # undefined method `available=' for nil:NilClass
  def available
    Request.where( :available => true )
  end



end
