# == Schema Information
# Schema version: 20101201220038
#
# Table name: channels
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Channel < ActiveRecord::Base
end
