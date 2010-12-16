# == Schema Information
# Schema version: 20101206190743
#
# Table name: dispositions
#
#  id               :integer         not null, primary key
#  created_at       :datetime
#  updated_at       :datetime
#  channel_id       :integer
#  time_to_complete :integer
#  notes            :text
#  followup         :boolean
#  suggested_wrapup :string(255)
#  interaction_id   :integer
#

class Disposition < ActiveRecord::Base
belongs_to :channel 
belongs_to :business
belongs_to :mood
belongs_to :promotion

validates_presence_of :time_to_complete, :notes, :interaction_id, :channel_id


end
