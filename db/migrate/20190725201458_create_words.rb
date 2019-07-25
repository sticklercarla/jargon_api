class CreateWords < ActiveRecord::Migration[5.2]
  def change
    create_table :words do |t|
      t.references :category, foreign_key: true
      t.string :english
      t.string :spanish
      t.string :french
      t.timestamps
    end
  end
end
