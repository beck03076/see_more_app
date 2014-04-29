class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string :name
      t.text :desc
      t.integer :assigned_to

      t.timestamps
    end
  end
end
