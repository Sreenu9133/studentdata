class CreateDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :details do |t|
      t.string :name
      t.string :place
      t.text :body
      t.string :contact
      t.integer :age
      t.string :department
      t.string :group
      t.text :selfdetails

      t.timestamps
    end
  end
end
