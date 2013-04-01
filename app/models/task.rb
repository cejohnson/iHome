class Task
  include Mongoid::Document
  
  field :name, :type => String
  field :frequency, :type => Integer, :default => 7
  
  embedded_in :interior
  has_and_belongs_to_many :rooms
end
