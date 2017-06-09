class AddGameIdToMessages < ActiveRecord::Migration[5.1]
  def change
    add_column :messages, :game_id, :integer
  end
end
