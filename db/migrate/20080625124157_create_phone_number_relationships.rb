class CreatePhoneNumberRelationships < ActiveRecord::Migration
  def self.up
    create_table :phone_number_relationships do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :phone_number_relationships
  end
end
