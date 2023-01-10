class AddGenderToDetail < ActiveRecord::Migration[7.0]
  def change
    remove_column :details, :gender, :string
    add_column :details, :sex, :integer

  end
end
