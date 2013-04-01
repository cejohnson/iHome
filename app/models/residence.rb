class Residence
  include Mongoid::Document
  
  field :name, :type => String
  field :rent, :type => Boolean, :default => false
  field :cleaning_frequency, :type => Integer, :default => 3
  
  has_and_belongs_to_many :user
  embeds_one :interior
end
