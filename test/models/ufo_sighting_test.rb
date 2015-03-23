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

require 'test_helper'

class UfoSightingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
