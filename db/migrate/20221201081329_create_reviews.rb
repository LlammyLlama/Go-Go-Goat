class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.text :comment
      t.references :user, foreign_key: true
      t.references :goat, foreign_key: true

      t.timestamps
    end
  end
end
