class CreateChats < ActiveRecord::Migration[6.1]
  def change
    create_table :chats do |t|
      t.text :message
      t.references :sender, null: false, foreign_key: { to_table: :users }
      t.references :conversation, null: false, foreign_key: true
      t.datetime :sent_at

      t.timestamps
    end
  end
end
