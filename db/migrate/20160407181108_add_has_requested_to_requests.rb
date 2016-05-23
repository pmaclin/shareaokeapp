class AddHasRequestedToRequests < ActiveRecord::Migration
  def change
    add_column :requests, :has_requested, :boolean
  end
end
