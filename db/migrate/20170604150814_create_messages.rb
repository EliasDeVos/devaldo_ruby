class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.string :user
      t.text :message
      t.integer :match_id

      t.timestamps
    end
  end
end
