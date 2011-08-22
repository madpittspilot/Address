class CreateAddresses < ActiveRecord::Migration
  def self.up
    create_table :addresses do |t|
      t.string :street_1
      t.string :street_2
      t.string :po_box
      t.integer :person_id
      t.integer :suburb_id
      
      t.timestamps
    end
  end

  def self.down
    drop_table :addresses
  end
end
