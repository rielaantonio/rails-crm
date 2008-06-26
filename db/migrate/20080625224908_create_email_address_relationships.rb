class CreateEmailAddressRelationships < ActiveRecord::Migration
  def self.up
    create_table :email_address_relationships do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :email_address_relationships
  end
end
