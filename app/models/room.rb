class Room
  include Mongoid::Document
  
  field :name, :type => String
  
  embedded_in :interior
  has_and_belongs_to_many :tasks
end
