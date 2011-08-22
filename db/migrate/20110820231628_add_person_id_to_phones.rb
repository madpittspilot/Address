class AddPersonIdToPhones < ActiveRecord::Migration
  def self.up
    add_column :phones, :person_id, :integer
  end

  def self.down
    remove_column :phones, :person_id
  end
end
