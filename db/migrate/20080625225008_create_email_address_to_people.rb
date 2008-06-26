class CreateEmailAddressToPeople < ActiveRecord::Migration
  def self.up
    create_table :email_address_to_people do |t|
      t.integer :email_address_id
      t.integer :email_address_relationship_id
      t.integer :person_id

      t.timestamps
    end
  end

  def self.down
    drop_table :email_address_to_people
  end
end
