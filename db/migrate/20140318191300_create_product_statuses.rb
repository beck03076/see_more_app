class CreateProductStatuses < ActiveRecord::Migration
  def change
    create_table :product_statuses do |t|
      t.string :name
      t.text :desc

      t.timestamps
    end
  end
end
