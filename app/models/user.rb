class User < ActiveRecord::Base

  ratyrate_rater

  mount_uploader :avatar, AvatarUploader

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :performances
  has_many :checkins
  has_many :requests
  has_many :reviews
  has_many :songs

  has_many :venues, :through => :checkins

def checkin
  checkins.last
end

def previous_checkins
  self.checkins.where(is_checked_in:true).last
end
def request
  @requests = Request.find_by(:available => false)
end

end


# user should have many songs
