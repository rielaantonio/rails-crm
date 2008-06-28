# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20080626200652) do

  create_table "auth_accounts", :force => true do |t|
    t.string   "password"
    t.datetime "lastauth"
    t.integer  "person_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "auth_group_members", :force => true do |t|
    t.integer  "auth_account_id"
    t.integer  "auth_group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "auth_groups", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cities", :force => true do |t|
    t.integer  "state_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "companies", :force => true do |t|
    t.text     "about"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "company_name_relationships", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "company_names", :force => true do |t|
    t.string   "name"
    t.integer  "company_id"
    t.integer  "company_name_relationship_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "company_to_locations", :force => true do |t|
    t.integer  "location_relationship_id"
    t.integer  "company_id"
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "company_to_names", :force => true do |t|
    t.integer  "company_id"
    t.integer  "company_name_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "counties", :force => true do |t|
    t.integer  "state_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "countries", :force => true do |t|
    t.string   "name"
    t.string   "abbr"
    t.integer  "phone_prefix"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "email_address_relationships", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "email_address_to_companies", :force => true do |t|
    t.integer  "email_address_id"
    t.integer  "email_address_relationship_id"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "email_address_to_people", :force => true do |t|
    t.integer  "email_address_id"
    t.integer  "email_address_relationship_id"
    t.integer  "person_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "email_addresses", :force => true do |t|
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "instant_messenger_networks", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "instant_messenger_relationships", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "instant_messenger_to_people", :force => true do |t|
    t.integer  "instant_messenger_id"
    t.integer  "instant_messenger_relationship_id"
    t.integer  "person_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "instant_messengers", :force => true do |t|
    t.string   "name"
    t.integer  "instant_messenger_network_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "location_relationships", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", :force => true do |t|
    t.string   "line1"
    t.string   "line2"
    t.integer  "city_id"
    t.integer  "state_id"
    t.integer  "zipcode_id"
    t.integer  "county_id"
    t.integer  "country_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", :force => true do |t|
    t.string   "first"
    t.string   "middle"
    t.string   "last"
    t.text     "background"
    t.date     "birthdate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "person_to_locations", :force => true do |t|
    t.integer  "location_relationship_id"
    t.integer  "person_id"
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "phone_number_relationships", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "phone_numbers", :force => true do |t|
    t.integer  "phone_number_relationship_id"
    t.integer  "number"
    t.integer  "country_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "states", :force => true do |t|
    t.integer  "country_id"
    t.string   "name"
    t.string   "abbr"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "zipcodes", :force => true do |t|
    t.integer  "state_id"
    t.integer  "zipcode"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_foreign_key "auth_accounts", ["person_id"], "people", ["id"], :name => "auth_accounts_person_id_fkey"

  add_foreign_key "auth_group_members", ["auth_account_id"], "auth_accounts", ["id"], :name => "auth_group_members_auth_account_id_fkey"
  add_foreign_key "auth_group_members", ["auth_group_id"], "auth_groups", ["id"], :name => "auth_group_members_auth_group_id_fkey"

  add_foreign_key "cities", ["state_id"], "states", ["id"], :name => "cities_state_id_fkey"

  add_foreign_key "company_names", ["company_id"], "companies", ["id"], :name => "company_names_company_id_fkey"
  add_foreign_key "company_names", ["company_name_relationship_id"], "company_name_relationships", ["id"], :name => "company_names_company_name_relationship_id_fkey"

  add_foreign_key "company_to_locations", ["location_relationship_id"], "location_relationships", ["id"], :name => "company_to_locations_location_relationship_id_fkey"
  add_foreign_key "company_to_locations", ["company_id"], "companies", ["id"], :name => "company_to_locations_company_id_fkey"
  add_foreign_key "company_to_locations", ["location_id"], "locations", ["id"], :name => "company_to_locations_location_id_fkey"

  add_foreign_key "company_to_names", ["company_id"], "companies", ["id"], :name => "company_to_names_company_id_fkey"
  add_foreign_key "company_to_names", ["company_name_id"], "company_names", ["id"], :name => "company_to_names_company_name_id_fkey"

  add_foreign_key "counties", ["state_id"], "states", ["id"], :name => "counties_state_id_fkey"

  add_foreign_key "email_address_to_companies", ["email_address_id"], "email_addresses", ["id"], :name => "email_address_to_companies_email_address_id_fkey"
  add_foreign_key "email_address_to_companies", ["email_address_relationship_id"], "email_address_relationships", ["id"], :name => "email_address_to_companies_email_address_relationship_id_fkey"
  add_foreign_key "email_address_to_companies", ["company_id"], "companies", ["id"], :name => "email_address_to_companies_company_id_fkey"

  add_foreign_key "email_address_to_people", ["email_address_id"], "email_addresses", ["id"], :name => "email_address_to_people_email_address_id_fkey"
  add_foreign_key "email_address_to_people", ["email_address_relationship_id"], "email_address_relationships", ["id"], :name => "email_address_to_people_email_address_relationship_id_fkey"
  add_foreign_key "email_address_to_people", ["person_id"], "people", ["id"], :name => "email_address_to_people_person_id_fkey"

  add_foreign_key "instant_messenger_to_people", ["instant_messenger_id"], "instant_messengers", ["id"], :name => "instant_messenger_to_people_instant_messenger_id_fkey"
  add_foreign_key "instant_messenger_to_people", ["instant_messenger_relationship_id"], "instant_messenger_relationships", ["id"], :name => "instant_messenger_to_people_instant_messenger_relationship_fkey"
  add_foreign_key "instant_messenger_to_people", ["person_id"], "people", ["id"], :name => "instant_messenger_to_people_person_id_fkey"

  add_foreign_key "instant_messengers", ["instant_messenger_network_id"], "instant_messenger_networks", ["id"], :name => "instant_messengers_instant_messenger_network_id_fkey"

  add_foreign_key "locations", ["city_id"], "cities", ["id"], :name => "locations_city_id_fkey"
  add_foreign_key "locations", ["state_id"], "states", ["id"], :name => "locations_state_id_fkey"
  add_foreign_key "locations", ["zipcode_id"], "zipcodes", ["id"], :name => "locations_zipcode_id_fkey"
  add_foreign_key "locations", ["county_id"], "counties", ["id"], :name => "locations_county_id_fkey"
  add_foreign_key "locations", ["country_id"], "countries", ["id"], :name => "locations_country_id_fkey"

  add_foreign_key "person_to_locations", ["location_relationship_id"], "location_relationships", ["id"], :name => "person_to_locations_location_relationship_id_fkey"
  add_foreign_key "person_to_locations", ["person_id"], "people", ["id"], :name => "person_to_locations_person_id_fkey"
  add_foreign_key "person_to_locations", ["location_id"], "locations", ["id"], :name => "person_to_locations_location_id_fkey"

  add_foreign_key "phone_numbers", ["phone_number_relationship_id"], "phone_number_relationships", ["id"], :name => "phone_numbers_phone_number_relationship_id_fkey"
  add_foreign_key "phone_numbers", ["country_id"], "countries", ["id"], :name => "phone_numbers_country_id_fkey"

  add_foreign_key "states", ["country_id"], "countries", ["id"], :name => "states_country_id_fkey"

  add_foreign_key "zipcodes", ["state_id"], "states", ["id"], :name => "zipcodes_state_id_fkey"

end
