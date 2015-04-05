# == Schema Information
#
# Table name: conspiracies
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  body       :text
#  image      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class ConspiracyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
