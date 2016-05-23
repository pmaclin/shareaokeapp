class AddArtToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :art, :string
  end
end
