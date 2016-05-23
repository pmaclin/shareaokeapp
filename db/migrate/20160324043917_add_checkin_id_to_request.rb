class AddCheckinIdToRequest < ActiveRecord::Migration
  def change
    add_column :requests, :checkin_id, :integer
  end
end
