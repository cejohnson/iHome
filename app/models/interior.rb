class Interior
  include Mongoid::Document
  
  field :clean_by_room, :type => Boolean, :default => false
  field :bedrooms, :type => Integer
  field :bathrooms, :type => Integer
  field :garage, :type => Boolean
  
  embedded_in :residence
  embeds_many :rooms
  has_many :tasks
  
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
      Task.new( name: "Sweep" ),
      Task.new( name: "Mop" ),
      Task.new( name: "Dust" ),
      Task.new( name: "Vacuum" ),
      Task.new( name: "Clean Dishes" ),
      Task.new( name: "Wipe Counters" ),
      Task.new( name: "Clean Oven" ),
      Task.new( name: "Clean Refrigerator" ),
      Task.new( name: "Clean Stovetop" ),
      Task.new( name: "Clean Microwave" ),
      Task.new( name: "Clean Freezer" ),
      Task.new( name: "Clean Sink" ),
      Task.new( name: "Clean Toilet" ),
      Task.new( name: "Clean Bathtub" ),
      Task.new( name: "Clean Shower" ),
      Task.new( name: "Clean Cabinets" ),
      Task.new( name: "Clean Refrigerator Coils" ),
      Task.new( name: "Replace Furnace Filter" ),
      Task.new( name: "Check Smoke Detector" )
    ]
  end
end
