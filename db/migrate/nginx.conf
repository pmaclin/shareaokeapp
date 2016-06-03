class CreatePerformances < ActiveRecord::Migration
  def change
    create_table :performances do |t|
      t.integer :rating
      t.text :comment
      t.boolean :completed
      t.references :user, index: true, foreign_key: true
      t.references :song, index: true, foreign_key: true
      t.references :venue, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
