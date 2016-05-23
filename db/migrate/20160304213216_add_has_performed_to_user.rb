class AddHasPerformedToUser < ActiveRecord::Migration
  def change
    add_column :users, :has_performed, :boolean
  end
end
