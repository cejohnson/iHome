class Room
  include Mongoid::Document
  
  field :name, :type => String
  field :category, :type => String
  field :tasks, :type => Array
  
  embedded_in :interior
  #has_and_belongs_to_many :tasks
end
