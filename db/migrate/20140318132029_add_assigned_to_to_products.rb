class AddAssignedToToProducts < ActiveRecord::Migration
  def change
    add_column :products, :assigned_to, :integer
  end
end
