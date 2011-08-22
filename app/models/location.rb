class Location < ActiveRecord::Base
  has_many :people
  has_many :emails
  has_many :phones
end
