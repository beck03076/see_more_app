class CreateSellers < ActiveRecord::Migration
  def change
    create_table :sellers do |t|
      t.string :name
      t.string :city
      t.string :country
      t.text :address
      t.string :owner_name
      t.text :desc
      t.string :website
      t.integer :assigned_to

      t.timestamps
    end
  end
end
