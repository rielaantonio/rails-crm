class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :people do |t|
      t.string :first
      t.string :middle
      t.string :last
      t.text :background
      t.date :birthdate

      t.timestamps
    end
  end

  def self.down
    drop_table :people
  end
end
