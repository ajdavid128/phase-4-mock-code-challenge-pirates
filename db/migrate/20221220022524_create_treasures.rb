class CreateTreasures < ActiveRecord::Migration[6.1]
  def change
    create_table :treasures do |t|
      t.string :contents
      t.belongs_to :pirate, null: false, foreign_key: true
      t.belongs_to :island, null: false, foreign_key: true

      t.timestamps
    end
  end
end
