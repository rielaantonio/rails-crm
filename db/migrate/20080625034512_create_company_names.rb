class CreateCompanyNames < ActiveRecord::Migration
  def self.up
    create_table :company_names do |t|
      t.string :name
      t.int :company_id
      t.int :company_name_relationship_id

      t.timestamps
    end
  end

  def self.down
    drop_table :company_names
  end
end
