class RemoveMatchIdFromMessages < ActiveRecord::Migration[5.1]
  def change
    remove_column :messages, :match_id, :integer
  end
end
