class AddPromotionIdToDisposition < ActiveRecord::Migration
  def self.up
    add_column :dispositions, :promotion_id, :integer
  end

  def self.down
    remove_column :dispositions, :promotion_id
  end
end
