class AddBusinessIdToDisposition < ActiveRecord::Migration
  def self.up
    add_column :dispositions, :business_id, :integer
  end

  def self.down
    remove_column :dispositions, :business_id
  end
end
