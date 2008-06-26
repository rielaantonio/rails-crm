class CreateLocations < ActiveRecord::Migration
  def self.up
    create_table :locations do |t|
      t.string :line1
      t.string :line2
      t.integer :city_id
      t.integer :state_id
      t.integer :zipcode_id
      t.integer :county_id
      t.integer :country_id

      t.timestamps
    end
  end

  def self.down
    drop_table :locations
  end
end
