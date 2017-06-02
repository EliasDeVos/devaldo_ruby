class CreateStatistics < ActiveRecord::Migration[5.1]
  def change
    create_table :statistics do |t|
      t.string :name
      t.string :games
      t.string :wins
      t.string :losses
      t.string :draws
      t.string :points
      t.string :goalsFor
      t.string :goalsAgainst

      t.timestamps
    end
  end
end
