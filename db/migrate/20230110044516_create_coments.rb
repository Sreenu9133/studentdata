class CreateComents < ActiveRecord::Migration[7.0]
  def change
    create_table :coments do |t|
      t.string :commenter
      t.text :body
      t.references :details, null: false, foreign_key: true

      t.timestamps
    end
  end
end
