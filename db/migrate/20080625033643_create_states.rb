class CreateStates < ActiveRecord::Migration
  def self.up
    create_table :states do |t|
      t.integer :country_id
      t.string :name
      t.string :abbr

      t.timestamps
    end

    usa = Country.find(:first, :conditions => "abbr = 'USA'")
    State.create!(:country_id => usa.id, :abbr => 'AL', :name => 'Alabama')
    State.create!(:country_id => usa.id, :abbr => 'AK', :name => 'Alaska')
    State.create!(:country_id => usa.id, :abbr => 'AS', :name => 'American Samoa')
    State.create!(:country_id => usa.id, :abbr => 'AZ', :name => 'Arizona')
    State.create!(:country_id => usa.id, :abbr => 'AR', :name => 'Arkansas')
    State.create!(:country_id => usa.id, :abbr => 'CA', :name => 'California')
    State.create!(:country_id => usa.id, :abbr => 'CO', :name => 'Colorado')
    State.create!(:country_id => usa.id, :abbr => 'CT', :name => 'Connecticut')
    State.create!(:country_id => usa.id, :abbr => 'DE', :name => 'Delaware')
    State.create!(:country_id => usa.id, :abbr => 'DC', :name => 'District of Columbia')
    State.create!(:country_id => usa.id, :abbr => 'FL', :name => 'Florida')
    State.create!(:country_id => usa.id, :abbr => 'GA', :name => 'Georgia')
    State.create!(:country_id => usa.id, :abbr => 'GU', :name => 'Guam')
    State.create!(:country_id => usa.id, :abbr => 'HI', :name => 'Hawaii')
    State.create!(:country_id => usa.id, :abbr => 'ID', :name => 'Idaho')
    State.create!(:country_id => usa.id, :abbr => 'IL', :name => 'Illinois')
    State.create!(:country_id => usa.id, :abbr => 'IN', :name => 'Indiana')
    State.create!(:country_id => usa.id, :abbr => 'IA', :name => 'Iowa')
    State.create!(:country_id => usa.id, :abbr => 'KS', :name => 'Kansas')
    State.create!(:country_id => usa.id, :abbr => 'KY', :name => 'Kentucky')
    State.create!(:country_id => usa.id, :abbr => 'LA', :name => 'Louisiana')
    State.create!(:country_id => usa.id, :abbr => 'ME', :name => 'Maine')
    State.create!(:country_id => usa.id, :abbr => 'MD', :name => 'Maryland')
    State.create!(:country_id => usa.id, :abbr => 'MA', :name => 'Massachusetts')
    State.create!(:country_id => usa.id, :abbr => 'MI', :name => 'Michigan')
    State.create!(:country_id => usa.id, :abbr => 'MN', :name => 'Minnesota')
    State.create!(:country_id => usa.id, :abbr => 'MS', :name => 'Mississippi')
    State.create!(:country_id => usa.id, :abbr => 'MO', :name => 'Missouri')
    State.create!(:country_id => usa.id, :abbr => 'MT', :name => 'Montana')
    State.create!(:country_id => usa.id, :abbr => 'NE', :name => 'Nebraska')
    State.create!(:country_id => usa.id, :abbr => 'NV', :name => 'Nevada')
    State.create!(:country_id => usa.id, :abbr => 'NH', :name => 'New Hampshire')
    State.create!(:country_id => usa.id, :abbr => 'NJ', :name => 'New Jersey')
    State.create!(:country_id => usa.id, :abbr => 'NM', :name => 'New Mexico')
    State.create!(:country_id => usa.id, :abbr => 'NY', :name => 'New York')
    State.create!(:country_id => usa.id, :abbr => 'NC', :name => 'North Carolina')
    State.create!(:country_id => usa.id, :abbr => 'ND', :name => 'North Dakota')
    State.create!(:country_id => usa.id, :abbr => 'MP', :name => 'Northern Mariana Islands')
    State.create!(:country_id => usa.id, :abbr => 'OH', :name => 'Ohio')
    State.create!(:country_id => usa.id, :abbr => 'OK', :name => 'Oklahoma')
    State.create!(:country_id => usa.id, :abbr => 'OR', :name => 'Oregon')
    State.create!(:country_id => usa.id, :abbr => 'PA', :name => 'Pennsylvania')
    State.create!(:country_id => usa.id, :abbr => 'PR', :name => 'Puerto Rico')
    State.create!(:country_id => usa.id, :abbr => 'RI', :name => 'Rhode Island')
    State.create!(:country_id => usa.id, :abbr => 'SC', :name => 'South Carolina')
    State.create!(:country_id => usa.id, :abbr => 'SD', :name => 'South Dakota')
    State.create!(:country_id => usa.id, :abbr => 'TN', :name => 'Tennessee')
    State.create!(:country_id => usa.id, :abbr => 'TX', :name => 'Texas')
    State.create!(:country_id => usa.id, :abbr => 'UT', :name => 'Utah')
    State.create!(:country_id => usa.id, :abbr => 'VT', :name => 'Vermont')
    State.create!(:country_id => usa.id, :abbr => 'VA', :name => 'Virginia')
    State.create!(:country_id => usa.id, :abbr => 'VI', :name => 'Virgin Islands')
    State.create!(:country_id => usa.id, :abbr => 'WA', :name => 'Washington')
    State.create!(:country_id => usa.id, :abbr => 'WV', :name => 'West Virginia')
    State.create!(:country_id => usa.id, :abbr => 'WI', :name => 'Wisconsin')
    State.create!(:country_id => usa.id, :abbr => 'WY', :name => 'Wyoming')
  end

  def self.down
    drop_table :states
  end
end
