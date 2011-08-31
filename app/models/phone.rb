class Phone < ActiveRecord::Base
  belongs_to :person
  belongs_to :location
  
    default_scope :order => "location_id"
end
