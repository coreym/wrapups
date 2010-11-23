class CreateContacts < ActiveRecord::Migration
  def self.up
    create_table :contacts do |t|
      t.integer :time_to_complete
      t.text :notes
      t.boolean :followup
      t.string :suggested_wrapup
      t.integer :interaction_id

      t.timestamps
    end
  end

  def self.down
    drop_table :contacts
  end
end
