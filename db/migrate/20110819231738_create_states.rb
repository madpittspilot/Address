class CreateStates < ActiveRecord::Migration
  def self.up
    create_table :states do |t|
      t.string :state
      t.string :state_long
      t.integer :country_id

      t.timestamps
    end
  end

  def self.down
    drop_table :states
  end
end
