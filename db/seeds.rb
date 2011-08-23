# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

require 'open-uri'
#require 'active_record/fixtures'

#["Windows", "Linux", "Mac OS X"].each do |os|
#  OperatingSystem.find_or_create_by_name(os)
#end

Country.delete_all
open("http://openconcept.ca/sites/openconcept.ca/files/country_code_drupal_0.txt") do |countries|
  countries.read.each_line do |country|
    code, name = country.chomp.split("|")
    Country.create!(:country_long => name, :country => code)
#    Country.create!(:name => name, :code => code)
  end
end

["Home", "Work", "Mobile"].each do |loc|
  Location.find_or_create_by_location(loc)
end


#Fixtures.create_fixtures("#{Rails.root}/test/fixtures", "operating_systems")