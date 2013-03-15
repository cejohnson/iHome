class Room
  include Mongoid::Document
  
  field :name, :type => String
  
  belongs_to :interior
  has_and_belongs_to_many :tasks
end
