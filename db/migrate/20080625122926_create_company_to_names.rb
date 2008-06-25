class CreateCompanyToNames < ActiveRecord::Migration
  def self.up
    create_table :company_to_names do |t|
      t.int :company_id
      t.int :company_name_id

      t.timestamps
    end
  end

  def self.down
    drop_table :company_to_names
  end
end
