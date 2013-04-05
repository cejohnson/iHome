class Room
  include Mongoid::Document
  
  field :name, :type => String
  field :category, :type => String
  
  embedded_in :interior, :inverse_of
  has_and_belongs_to_many :tasks
end
