class Residence
  include Mongoid::Document
  
  field :name, :type => String
  
  field :footage, :type => Integer
  field :rent, :type => Boolean, :default => false
  field :cleaning_frequency, :type => Integer, :default => 3
  
  belongs_to :user
  embeds_one :interior
end
