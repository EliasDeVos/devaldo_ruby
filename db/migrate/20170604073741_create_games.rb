class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.string :homeTeam
      t.string :awayTeam
      t.string :score
      t.text :description

      t.timestamps
    end
  end
end
