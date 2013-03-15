class Task
  include Mongoid::Document
  
  belongs_to :interior
  has_and_belongs_to_many :rooms
end
