class RemovePostcodeFromAddress < ActiveRecord::Migration
  def self.up
    remove_column :addresses, :postcode
  end

  def self.down
    add_column :addresses, :postcode, :string
  end
end
