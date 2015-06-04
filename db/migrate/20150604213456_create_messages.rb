class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :username
      t.string :message
      t.string :chatroom
      t.string :reserve
      t.timestamps null: false
    end
  end
end
