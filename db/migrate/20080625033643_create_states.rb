class CreateStates < ActiveRecord::Migration
  def self.up
    create_table :states do |t|
      t.int :country_id
      t.string :name
      t.string :abbr

      t.timestamps
    end
  end

  def self.down
    drop_table :states
  end
end
