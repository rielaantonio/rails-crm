class CreateInstantMessengerToPeople < ActiveRecord::Migration
  def self.up
    create_table :instant_messenger_to_people do |t|
      t.integer :instant_messenger_id
      t.integer :instant_messenger_relationship_id
      t.integer :person_id

      t.timestamps
    end
  end

  def self.down
    drop_table :instant_messenger_to_people
  end
end
