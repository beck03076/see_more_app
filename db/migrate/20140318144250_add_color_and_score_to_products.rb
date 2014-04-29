class AddColorAndScoreToProducts < ActiveRecord::Migration
  def change
    add_column :products, :color, :string
    add_column :products, :score, :integer
  end
end
