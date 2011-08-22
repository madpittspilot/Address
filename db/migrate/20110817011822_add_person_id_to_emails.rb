class AddPersonIdToEmails < ActiveRecord::Migration
  def self.up
    add_column :emails, :person_id, :integer
  end

  def self.down
    remove_column :emails, :person_id
  end
end
