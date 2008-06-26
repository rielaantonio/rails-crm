class CreateCountries < ActiveRecord::Migration
  def self.up
    create_table :countries do |t|
      t.string :name
      t.string :abbr
      t.integer :phone_prefix

      t.timestamps
    end

    Country.create!(:name => 'United States of America', :abbr => 'USA', :phone_prefix => 1)
  end

  def self.down
    drop_table :countries
  end
end
