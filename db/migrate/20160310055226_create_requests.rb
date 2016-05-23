class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.boolean :available
      t.references :user, index: true, foreign_key: true
      t.references :song, index: true, foreign_key: true
      t.references :venue, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
