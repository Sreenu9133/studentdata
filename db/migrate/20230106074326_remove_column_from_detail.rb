class RemoveColumnFromDetail < ActiveRecord::Migration[7.0]
  def change
    remove_column :details, :body, :text
  end
end
