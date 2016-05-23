class Venue < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  # We should be able to bring back a list of checkins on the Venue object
  has_many :checkins

  # We should be able to bring back a list of requests on the Venue object
  has_many :requests

  # We should be able to bring back a list of performances on the Venue object
  has_many :performances

  # We should be able to bring back a list of songs on the Venue object
  has_many :songs

  # belongs_to :users
  has_many :users, :through => :checkins

  validates :name, :presence => true, :uniqueness => { :scope => :address }
  # validates :adress, :presence => true
  # validates :city, :presence => true

  # validates :name, :presence => true, :uniqueness => {:scope => :city}
end
