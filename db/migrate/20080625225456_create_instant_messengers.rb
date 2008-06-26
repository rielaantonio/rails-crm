class CreateInstantMessengers < ActiveRecord::Migration
  def self.up
    create_table :instant_messengers do |t|
      t.string :name
      t.integer :instant_messenger_network_id

      t.timestamps
    end
  end

  def self.down
    drop_table :instant_messengers
  end
end
