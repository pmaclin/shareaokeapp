class Checkin < ActiveRecord::Base
  belongs_to :user
  belongs_to :venue

  has_many :requests

  validates :user, :presence => true
  validates :venue, :presence => true
end



# Near future, validate :user so there can be no duplicate user IDs in the same table
# Then we can send the "Check Out" function to the Destroy Method (??), to delete the
# record from the table, allowing the user to checkin to other locations. We'll have
# to see what best practices is on this...
