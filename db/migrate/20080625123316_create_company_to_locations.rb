class CreateCompanyToLocations < ActiveRecord::Migration
  def self.up
    create_table :company_to_locations do |t|
      t.int :location_relationship_id
      t.int :company_id
      t.int :location_id

      t.timestamps
    end
  end

  def self.down
    drop_table :company_to_locations
  end
end
