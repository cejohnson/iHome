class Interior
  include Mongoid::Document
  
  field :clean_by_room, :type => Boolean, :default => false
  field :bedrooms, :type => Integer
  field :bathrooms, :type => Integer
  field :garage, :type => Boolean, :default => true
  
  embedded_in :residence
  embeds_many :rooms
  has_many :tasks
  
  def set_rooms
    rooms.create([{ name: "Master Bedroom", category: "bedroom" }, 
                         { name: "Master Bathroom", category: "bathroom" }, 
                         { name: "Kitchen", category: "kitchen" },
                         { name: "Living Room", category: "room" },
                         { name: "Family Room", category: "room" },
                         { name: "Dining Room", category: "room" }
                       ])
=begin    
    for i in 0..(bedrooms - 1)
      @room = Room.create{ name: "Bedroom", category: "bedroom" }
      rooms << @room
    end
    for i in 0..(bathrooms - 1)
      rooms << Room.new{ name: "Bathroom", category: "bathroom" }
    end
    if garage
      rooms << Room.new{ name: "Garage", category: "garage" }
    end
=end
  end
end
