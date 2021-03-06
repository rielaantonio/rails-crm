class CreateEmailAddressToCompanies < ActiveRecord::Migration
  def self.up
    create_table :email_address_to_companies do |t|
      t.integer :email_address_id
      t.integer :email_address_relationship_id
      t.integer :company_id

      t.timestamps
    end
  end

  def self.down
    drop_table :email_address_to_companies
  end
end
