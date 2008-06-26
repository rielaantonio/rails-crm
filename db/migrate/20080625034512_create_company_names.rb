class CreateCompanyNames < ActiveRecord::Migration
  def self.up
    create_table :company_names do |t|
      t.string :name
      t.integer :company_id
      t.integer :company_name_relationship_id

      t.timestamps
    end
  end

  def self.down
    drop_table :company_names
  end
end
