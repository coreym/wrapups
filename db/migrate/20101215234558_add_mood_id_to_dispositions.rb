class AddMoodIdToDispositions < ActiveRecord::Migration
  def self.up
    add_column :dispositions, :mood_id, :integer
  end

  def self.down
    remove_column :dispositions, :mood_id
  end
end
