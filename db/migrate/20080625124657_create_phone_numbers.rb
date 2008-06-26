class CreatePhoneNumbers < ActiveRecord::Migration
  def self.up
    create_table :phone_numbers do |t|
      t.integer :phone_number_relationship_id
      t.integer :number
      t.integer :country_id

      t.timestamps
    end
  end

  def self.down
    drop_table :phone_numbers
  end
end
