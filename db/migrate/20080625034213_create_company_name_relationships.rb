class CreateCompanyNameRelationships < ActiveRecord::Migration
  def self.up
    create_table :company_name_relationships do |t|
      t.string :name

      t.timestamps
    end

    CompanyNameRelationship.create!(:name => 'Active')
    CompanyNameRelationship.create!(:name => 'Former')
    CompanyNameRelationship.create!(:name => 'Abbreviation')
  end

  def self.down
    drop_table :company_name_relationships
  end
end
