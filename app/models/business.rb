# == Schema Information
# Schema version: 20101214221610
#
# Table name: businesses
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  description :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Business < ActiveRecord::Base
end
