class AddProductStatusIdToProducts < ActiveRecord::Migration
  def change
    add_column :products, :product_status_id, :integer
  end
end
