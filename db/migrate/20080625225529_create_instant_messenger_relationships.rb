class CreateInstantMessengerRelationships < ActiveRecord::Migration
  def self.up
    create_table :instant_messenger_relationships do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :instant_messenger_relationships
  end
end
