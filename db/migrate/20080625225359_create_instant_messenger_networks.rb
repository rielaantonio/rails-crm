class CreateInstantMessengerNetworks < ActiveRecord::Migration
  def self.up
    create_table :instant_messenger_networks do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :instant_messenger_networks
  end
end
