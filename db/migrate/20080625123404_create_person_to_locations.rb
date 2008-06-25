class CreatePersonToLocations < ActiveRecord::Migration
  def self.up
    create_table :person_to_locations do |t|
      t.int :location_relationship_id
      t.int :person_id
      t.int :location_id

      t.timestamps
    end
  end

  def self.down
    drop_table :person_to_locations
  end
end
