# == Schema Information
# Schema version: 20101201220038
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
#  channel_id       :integer
#

class Contact < ActiveRecord::Base
belongs_to :channel
validates_presence_of :time_to_complete, :notes, :followup, :interaction_id, :channel_id

end
