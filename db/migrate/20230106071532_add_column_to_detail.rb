class AddColumnToDetail < ActiveRecord::Migration[7.0]
  def change
    add_column :details, :published, :boolean, default: false
  end
end
