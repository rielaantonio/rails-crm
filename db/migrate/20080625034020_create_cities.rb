class CreateCities < ActiveRecord::Migration
  def self.up
    create_table :cities do |t|
      t.integer :state_id
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :cities
  end
end
