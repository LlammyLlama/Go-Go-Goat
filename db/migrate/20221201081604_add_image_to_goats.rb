class AddImageToGoats < ActiveRecord::Migration[7.0]
  def change
    add_column :goats, :image, :string
  end
end
