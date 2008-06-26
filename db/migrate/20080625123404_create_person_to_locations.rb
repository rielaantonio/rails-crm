class CreatePersonToLocations < ActiveRecord::Migration
  def self.up
    create_table :person_to_locations do |t|
      t.integer :location_relationship_id
      t.integer :person_id
      t.integer :location_id

      t.timestamps
    end
  end

  def self.down
    drop_table :person_to_locations
  end
end
