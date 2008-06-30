class Person < ActiveRecord::Base
  def name
    "#{first} #{last}"
  end

  def authentication
    AuthAccount.find (:first, :conditions => "person_id = '#{id}'");
  end

  def has_authentication
    true if authentication
  end
end
