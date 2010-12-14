class CreateDispositions < ActiveRecord::Migration
  def self.up
    create_table :dispositions do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :dispositions
  end
end
