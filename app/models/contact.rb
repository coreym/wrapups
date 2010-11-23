# == Schema Information
# Schema version: 20101123215741
#
# Table name: contacts
#
#  id               :integer         not null, primary key
#  time_to_complete :integer
#  notes            :text
#  followup         :boolean
#  suggested_wrapup :string(255)
#  interaction_id   :integer
#  created_at       :datetime
#  updated_at       :datetime
#

class Contact < ActiveRecord::Base
end
