# == Schema Information
#
# Table name: ufo_sightings
#
#  id         :integer          not null, primary key
#  address    :string(255)
#  craft      :string(255)
#  details    :string(255)
#  latitude   :float
#  longitude  :float
#  created_at :datetime
#  updated_at :datetime
#

class UfoSighting < ActiveRecord::Base
	geocoded_by :address   # can also be an IP address
	after_validation :geocode          # auto-fetch coordinates
end
