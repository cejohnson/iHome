class Task
  include Mongoid::Document
  
  field :name, :type => String
  field :frequency, :type => Integer, :default => 7
  field :rooms, :type => Array
  
  embedded_in :interior
  #has_and_belongs_to_many :rooms
end
