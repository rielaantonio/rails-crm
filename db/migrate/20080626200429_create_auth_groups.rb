class CreateAuthGroups < ActiveRecord::Migration
  def self.up
    create_table :auth_groups do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :auth_groups
  end
end
