class CreateGoats < ActiveRecord::Migration[7.0]
  def change
    create_table :goats do |t|
      t.string :name
      t.integer :age
      t.string :services
      t.integer :rate_per_day
      t.string :appetite
      t.string :description

      t.timestamps
    end
  end
end
