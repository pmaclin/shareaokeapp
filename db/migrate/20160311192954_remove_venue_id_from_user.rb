class RemoveVenueIdFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :venue_id, :integer
  end
end
