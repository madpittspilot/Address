class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :people do |t|
      t.string :fname
      t.string :lname
      t.date :dob
      t.text :note

      t.timestamps
    end
  end

  def self.down
    drop_table :people
  end
end
