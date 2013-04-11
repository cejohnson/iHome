class Interior
  include Mongoid::Document
  
  field :clean_by_room, :type => Boolean, :default => false
  field :bedrooms, :type => Integer
  field :bathrooms, :type => Integer
  field :garage, :type => Boolean
  
  embedded_in :residence
  embeds_many :rooms
  embeds_many :tasks
  
  def set_rooms
    rooms << rooms.new( name: "Master Bedroom", category: "bedroom" )
    for i in 0..(bedrooms - 2)
      rooms << rooms.new( name: "Bedroom", category: "bedroom" )
    end
    
    rooms << rooms.new( name: "Master Bathroom", category: "bathroom" )
    for i in 0..(bathrooms - 2)
      rooms << rooms.new( name: "Bathroom", category: "bathroom" )
    end
    
    rooms << rooms.new( name: "Kitchen", category: "kitchen" )
    rooms << rooms.new( name: "Living Room", category: "room" )
    rooms << rooms.new( name: "Family Room", category: "room" )
    rooms << rooms.new( name: "Dining Room", category: "room" )
        
    if garage
      rooms << rooms.new( name: "Garage", category: "garage" )
    end
  end
  
  def set_tasks
    self.tasks << [
      tasks.new( name: "Sweep" ),
      tasks.new( name: "Mop" ),
      tasks.new( name: "Dust" ),
      tasks.new( name: "Vacuum" ),
      tasks.new( name: "Clean Dishes" ),
      tasks.new( name: "Wipe Counters" ),
      tasks.new( name: "Clean Oven" ),
      tasks.new( name: "Clean Refrigerator" ),
      tasks.new( name: "Clean Stovetop" ),
      tasks.new( name: "Clean Microwave" ),
      tasks.new( name: "Clean Freezer" ),
      tasks.new( name: "Clean Sink" ),
      tasks.new( name: "Clean Toilet" ),
      tasks.new( name: "Clean Bathtub" ),
      tasks.new( name: "Clean Shower" ),
      tasks.new( name: "Clean Cabinets" ),
      tasks.new( name: "Clean Refrigerator Coils" ),
      tasks.new( name: "Replace Furnace Filter" ),
      tasks.new( name: "Check Smoke Detector" )
    ]
  end
end
