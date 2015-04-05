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

class Conspiracy < ActiveRecord::Base
  mount_uploader :image, ImageUploader
end
