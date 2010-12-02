class AddChannelIdToContacts < ActiveRecord::Migration
  def self.up
    change_table :contacts do |t|
      t.integer :channel_id
    end
    
  end

  def self.down
    remove_column :channel_id
  end
end
