class AddIsCheckedInToVenue < ActiveRecord::Migration
  def change
    add_column :venues, :is_checked_in, :boolean
  end
end
