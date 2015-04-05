# == Schema Information
#
# Table name: links
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  url        :string(255)
#  created_at :datetime
#  updated_at :datetime
#  user_id    :integer
#  image      :string(255)
#  body       :text
#  slug       :string(255)
#
# Indexes
#
#  index_links_on_slug     (slug) UNIQUE
#  index_links_on_user_id  (user_id)
#

require 'test_helper'

class LinkTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
