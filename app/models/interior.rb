class Interior
  include Mongoid::Document
  
  field :clean_by_room, :type => Boolean, :default => false
  
  belongs_to :residence
  embeds_many :rooms, :tasks
end
