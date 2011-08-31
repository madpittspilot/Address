class Person < ActiveRecord::Base
#    attr_accessor :emails_attributes

    has_many :emails, :dependent => :destroy
    accepts_nested_attributes_for :emails, :reject_if => lambda { |a| a[:email].blank? }, :allow_destroy => true

    has_many :phones, :dependent => :destroy
    accepts_nested_attributes_for :phones, :reject_if => lambda { |a| a[:number].blank? }, :allow_destroy => true
    
    has_many :addresses, :dependent => :destroy
    accepts_nested_attributes_for :addresses, :reject_if => lambda { |a| a[:street_1].blank? and a[:street_2].blank? and a[:suburb_id].blank? }, :allow_destroy => true

    has_many :suburbs, :through => :addresses, :dependent => :destroy
    accepts_nested_attributes_for :suburbs, :reject_if => lambda { |a| a[:suburb].blank? }
    
    validates_presence_of :full_name
    
    def full_name
      "#{fname} #{lname}"
    end
    
    class Object
      ##
      #   @person ? @person.name : nil
      # vs
      #   @person.try(:name)

    end
      

#    attr_accessible :emails_attributes, :addresses_attributes
end
