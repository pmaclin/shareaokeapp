class Song < ActiveRecord::Base
  mount_uploader :art, ArtUploader

  belongs_to :user
  # belongs_to :requester, :class_name => "User", :foreign_key => "requester_id"
  # belongs_to :requester, :class_name => "User"
  belongs_to :venue

  has_many :requests
  has_many :performances

  # validates :request, presence: true
  # validates :peformance, presence: true
  validates :artist, :presence => true
  validates :title, :presence => true
  validates :genre, :presence => true

  def venue
    Venue.find_by( :user_id => current_user.id )
  end

  def checkin
    Checkin.find_by( :user_id => current_user.id )
  end

end


# Song should belong to a requester (User)
