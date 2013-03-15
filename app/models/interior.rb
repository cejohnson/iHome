class Interior
  include Mongoid::Document
  
  belongs_to :residence
  embeds_many :rooms, :tasks
end
