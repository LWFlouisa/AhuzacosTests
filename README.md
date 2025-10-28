## Maisettelingua
This are example scripts for while I develop Maisettelingua, a DSL in Ruby uses a French like syntax for Expert Systems and Machine Learning.

## Version
Ruby 3.2.3

## Usage
~~~ruby
require "NeoPathfinding"

quiquoi("Andy",      "Albert",    "Bethany",
          "6:00 A.M.", "6:00 A.M.", "6:00 A.M.",

        cette("pomme", "rouge"),         cette("pomme", "rouge"),         cette("pomme", "rouge"),
        maisette("pomme", "vert"),       maisette("pomme", "vert"),       maisette("pomme", "vert"),
        sinon("pomme", "rouge", "vert"), sinon("pomme", "rouge", "vert"), sinon("pomme", "rouge", "vert"))

cadreref(cette("pomme", "rouge"),         "Relationship: Fruit",     0.33,
         maisette("pomme", "vert"),       "Relationship: Fruit",     0.33,
         sinon("pomme", "rouge", "vert"), "Relationship: Not Fruit", 0.33)


a = quiquandquoi("Anatta",            "rode his bike to school",     "at around 6:00 A.M.",
                   "That bike is red.", "But that school is not red.", "The road is neither red or green.")

b = quiquandquoi("Pierre",            "rode his bike to school",     "at around 6:00 A.M.",
                   "That bike is red.", "But that school is not red.", "The road is neither red or green.")
                 
c = quiquandquoi("Jacquez",           "rode his bike to school",     "at around 6:00 A.M.",
                 "That bike is red.", "But that school is not red.", "The road is neither red or green.")

2.times do
  d = get_statistics(:cette,    a,
                     :maisette, b,
                     :sinon,    c)
               
                     dynamic_reward_allocation
end

quandqui("At nine o clock", "Bob", cette("pomme", "rouge"), maisette("pomme", "vert"), sinon("pomme", "rouge", "vert"))

quoisi("lapine", "mort")
~~~
