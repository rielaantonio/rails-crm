class Country < ActiveRecord::Base
  def abbr_and_name
    "#{abbr} - #{name}"
  end
end
