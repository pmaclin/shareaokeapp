class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :user, index: true, foreign_key: true
      t.references :performance, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
