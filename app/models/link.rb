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
#
# Indexes
#
#  index_links_on_user_id  (user_id)
#

class Link < ActiveRecord::Base
	mount_uploader :image, ImageUploader
	acts_as_votable
	belongs_to :user
	has_many :comments
end