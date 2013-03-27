class Interior
  include Mongoid::Document
  
  field :clean_by_room, :type => Boolean, :default => false
  
  embedded_in :residence
  embeds_many :rooms
  embeds_many :tasks
end
