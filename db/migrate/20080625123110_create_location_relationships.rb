class CreateLocationRelationships < ActiveRecord::Migration
  def self.up
    create_table :location_relationships do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :location_relationships
  end
end
