## Maisettelingua
This are example scripts for while I develop Maisettelingua, a DSL in Ruby uses a French like syntax for Expert Systems and Machine Learning.

## Version
Ruby 3.2.3

## Usage
### Who And What
This subroutine focuses on specifying three people, the exact time, and the exact cette-maisette-sinon for each identity.

~~~ruby
quiquoi("Andy",      "Albert",    "Bethany",
        "6:00 A.M.", "6:00 A.M.", "6:00 A.M.",

        cette("pomme", "rouge"),         cette("pomme", "rouge"),         cette("pomme", "rouge"),
        maisette("pomme", "vert"),       maisette("pomme", "vert"),       maisette("pomme", "vert"),
        sinon("pomme", "rouge", "vert"), sinon("pomme", "rouge", "vert"), sinon("pomme", "rouge", "vert"))
~~~

## Who When What
This query asks who an entity is, when they did a thing, and what they did.

~~~ruby
a = quiquandquoi("Jan",               "at around 6:00 A.M.",         "rode his bike to school.",
                 "That bike is red.", "But that school is not red.", "The road is neither red or green.")

b = quiquandquoi("Albert",            "at around 6:00 A.M.",         "rode his bike to school.",
                 "That bike is red.", "But that school is not red.", "The road is neither red or green.")
                 
c = quiquandquoi("Andy",              "rode his bike to school",     "at around 6:00 A.M.",
                 "That bike is red.", "But that school is not red.", "The road is neither red or green.")

2.times do
  d = get_statistics(:jan,    a,
                     :andy,   b,
                     :albert, c)
               
                     dynamic_reward_allocation
end
~~~

## When Who
Inquires when something happened and who mentioned the conditional statement.

~~~ruby
quandqui("At nine o clock", "Bob", cette("pomme", "rouge"), maisette("pomme", "vert"), sinon("pomme", "rouge", "vert"))
~~~

## What If
A simple what if statement for asking the machine a what if question.

~~~ruby
quoisi("lapine", "mort")
~~~


## Frame Of Reference
Establishing a frame of reference by matching unrelated phrases within a topic by their implicit relationship:

~~~ruby
cadreref("Jan eats apples.",        "Relationship: Food",     0.33,
         "Albert eats carrots",     "Relationship: Food",     0.33,
         "Andy goes to the movies", "Relationship: Movies",   0.33)
~~~

This combines Cette-Maisette-Sinon with Cadreref, in order to match conditional statements with their relationships.

~~~ruby
cadreref(cette("pomme", "rouge"),         "Relationship: Fruit",     0.33,
         maisette("pomme", "vert"),       "Relationship: Fruit",     0.33,
         sinon("pomme", "rouge", "vert"), "Relationship: Not Fruit", 0.33)
~~~

This is how you connect what if statements inside a frame of reference.

~~~ruby
cadreref(quoisi("pomme",  "rouge"), "Relation: Pomme", 0.33,
         quoisi("pomme",   "vert"), "Relation: Pomme", 0.33,
         quoisi("banane", "jaune"), "Relation: Banane", 0.33)
~~~
