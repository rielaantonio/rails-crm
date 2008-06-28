class CreateAuthGroupMembers < ActiveRecord::Migration
  def self.up
    create_table :auth_group_members do |t|
      t.integer :auth_account_id
      t.integer :auth_group_id

      t.timestamps
    end
  end

  def self.down
    drop_table :auth_group_members
  end
end
