class CreateSuburbs < ActiveRecord::Migration
  def self.up
    create_table :suburbs do |t|
      t.string :suburb
      t.string :postcode
      t.integer :state_id

      t.timestamps
    end
  end

  def self.down
    drop_table :suburbs
  end
end
