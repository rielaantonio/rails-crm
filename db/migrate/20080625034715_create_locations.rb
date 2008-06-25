class CreateLocations < ActiveRecord::Migration
  def self.up
    create_table :locations do |t|
      t.string :line1
      t.string :line2
      t.int :city_id
      t.int :state_id
      t.int :zipcode_id
      t.int :county_id
      t.int :country_id

      t.timestamps
    end
  end

  def self.down
    drop_table :locations
  end
end
