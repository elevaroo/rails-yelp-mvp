class RemoveStringFromRestaurants < ActiveRecord::Migration[6.0]
  def change
    remove_column :restaurants, :string, :string
  end
end
