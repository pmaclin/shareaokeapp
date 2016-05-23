class CreateCheckins < ActiveRecord::Migration
  def change
    create_table :checkins do |t|
      t.boolean :is_checked_in
      t.references :user, index: true, foreign_key: true
      t.references :venue, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
