class RemovePoBoxFromAddress < ActiveRecord::Migration
  def self.up
    remove_column :addresses, :po_box
  end

  def self.down
    add_column :addresses, :po_box, :string
  end
end
