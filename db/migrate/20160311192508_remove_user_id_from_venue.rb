class RemoveUserIdFromVenue < ActiveRecord::Migration
  def change
    remove_column :venues, :user_id, :integer
  end
end
