class AddHomeAndAwayToGame < ActiveRecord::Migration[5.1]
  def change
    add_column :games, :home, :string
    add_column :games, :away, :string
  end
end
