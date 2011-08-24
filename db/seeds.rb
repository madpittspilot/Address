# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

require 'open-uri'
#require 'active_record/fixtures'


#Country.delete_all
#open("http://openconcept.ca/sites/openconcept.ca/files/country_code_drupal_0.txt") do |countries|
#  countries.read.each_line do |country|
#    code, name = country.chomp.split("|")
#    Country.create!(:country_long => name, :country => code)
##    Country.create!(:name => name, :code => code)
#  end
#end

#Country.delete_all
open("http://openconcept.ca/sites/openconcept.ca/files/country_code_drupal_0.txt") do |countries|
  countries.read.each_line do |country|
    code, name = country.chomp.split("|")
    Country.find_or_create_by_country(:country_long => name, :country => code)
#    Country.create!(:name => name, :code => code)
  end
end

["Home", "Work", "Mobile"].each do |loc|
  Location.find_or_create_by_location(loc)
end


State.find_or_create_by_state(:state => "ACT", :state_long => "Asses Culprits and Tricksters", :country_id => 13 )
State.find_or_create_by_state(:state => "NSW", :state_long => "New South Wales", :country_id => 13 )
State.find_or_create_by_state(:state => "NT", :state_long => "Northern Territory", :country_id => 13 )
State.find_or_create_by_state(:state => "QLD", :state_long => "Queensland", :country_id => 13 )
State.find_or_create_by_state(:state => "SA", :state_long => "South Australia", :country_id => 13 )
State.find_or_create_by_state(:state => "TAS", :state_long => "Tasmania", :country_id => 13 )
State.find_or_create_by_state(:state => "WA", :state_long => "Western Australia", :country_id => 13 )


#Fixtures.create_fixtures("#{Rails.root}/test/fixtures", "operating_systems")