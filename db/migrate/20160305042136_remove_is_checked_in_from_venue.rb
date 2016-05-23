class RemoveIsCheckedInFromVenue < ActiveRecord::Migration
  def change
    remove_column :venues, :is_checked_in, :boolean
  end
end
