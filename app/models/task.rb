class Task
  include Mongoid::Document
  
  field :name, :type => String
  field :frequency, :type => Integer, :default => 7
  
  belongs_to :interior
  has_and_belongs_to_many :rooms
end
