class AddFieldsToDispositions < ActiveRecord::Migration
  def self.up
     change_table :dispositions do |t|
       t.integer :channel_id
       t.integer :time_to_complete
       t.text :notes
       t.boolean :followup
       t.string :suggested_wrapup
       t.integer :interaction_id

      end
  end

  def self.down
    
    remove_column :channel_id, :time_to_complete, :notes, :followup, :suggested_wrapup, :interaction_id
      
  end
end
