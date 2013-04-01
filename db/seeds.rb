# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

    rooms = Room.create([{ name: "Master Bedroom", category: "bedroom" }, 
                         { name: "Master Bathroom", category: "bathroom" }, 
                         { name: "Bedroom", category: "bedroom" },
                         { name: "Bathroom", category: "bathroom" },
                         { name: "Kitchen", category: "kitchen" },
                         { name: "Living Room", category: "room" },
                         { name: "Family Room", category: "room" },
                         { name: "Dining Room", category: "room" }
                       ])
                       
    tasks = Task.create([{ name: "Sweep" },
                         { name: "Mop" },
                         { name: "Dust" },
                         { name: "Vacuum" },
                         { name: "Clean Dishes" },
                         { name: "Wipe Counters" },
                         { name: "Clean Oven" },
                         { name: "Clean Refrigerator" },
                         { name: "Clean Stovetop" },
                         { name: "Clean Microwave" },
                         { name: "Clean Freezer" },
                         { name: "Clean Sink" },
                         { name: "Clean Toilet" },
                         { name: "Clean Bathtub" },
                         { name: "Clean Shower" },
                         { name: "Clean Cabinets" },
                          
                       ])
