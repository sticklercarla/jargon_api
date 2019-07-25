class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.references :user, foreign_key: true
      t.integer :score
      t.integer :duration
      t.integer :correct_word_count
      t.timestamps
    end
  end
end
