class CreateCountries < ActiveRecord::Migration
  def self.up
    create_table :countries do |t|
      t.string :country
      t.string :country_long

      t.timestamps
    end
  end

  def self.down
    drop_table :countries
  end
end
