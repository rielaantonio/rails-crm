class CreateEmailAddressToPeople < ActiveRecord::Migration
  def self.up
    create_table :email_address_to_people do |t|
      t.int :email_address_id
      t.int :email_address_relationship_id
      t.int :person_id

      t.timestamps
    end
  end

  def self.down
    drop_table :email_address_to_people
  end
end
