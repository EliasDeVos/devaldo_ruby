class AddGameIdToAttachments < ActiveRecord::Migration[5.1]
  def change
    add_column :attachments, :game_id, :integer
  end
end
