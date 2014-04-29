class AddTitleToAudits < ActiveRecord::Migration
  def change
    add_column :audits, :title, :string
  end
end
