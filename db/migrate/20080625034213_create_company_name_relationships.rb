class CreateCompanyNameRelationships < ActiveRecord::Migration
  def self.up
    create_table :company_name_relationships do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :company_name_relationships
  end
end
