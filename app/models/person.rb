class Person < ActiveRecord::Base
  def name
    "#{first} #{last}"
  end

  def email_md5
    Digest::MD5.hexdigest("adunkman@gmail.com")
  end

  def avatar_url
    "http://www.gravatar.com/avatar/#{email_md5}?s=128"
  end

  def avatar_thumb_url
    "http://www.gravatar.com/avatar/#{email_md5}?s=50"
  end

  def authentication
    AuthAccount.find (:first, :conditions => "person_id = '#{id}'");
  end
end
