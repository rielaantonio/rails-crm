class CreateAuthAccounts < ActiveRecord::Migration
  def self.up
    create_table :auth_accounts do |t|
      t.string :password
      t.datetime :lastauth
      t.integer :person_id

      t.timestamps
    end
  end

  def self.down
    drop_table :auth_accounts
  end
end
