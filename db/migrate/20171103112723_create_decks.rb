class CreateDecks < ActiveRecord::Migration[5.0]
  def change

    create_table :decks do |t|

      t.string :name, null: false
      t.string :description, null: false
      t.integer :creator_id
      t.string :photo_url

      t.timestamps
    end

  end
end
