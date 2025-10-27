require "QuiQuandQuoi/Cedreref.rb"

cadreref("My favorite food is curries.",   "Relationship: Food", 0.33,
         "My favorite food is spaghetti.", "Relationship: Food", 0.33,
         "My favorite pet is a dog.",      "Relationship: Pets", 0.33)

cadreref("My favourite outfit is haute couture.",     "Relationship: Fashion", 0.33,
         "My favourite outfit is historical French.", "Relationship: Fashion", 0.33,
         "My favorite movie is 12 Monkeys.",          "Relationship: Movies",  0.33)

cadreref(cette("pomme", "rouge"),         "Relationship: Fruit", 0.33,
         maisette("pomme", "vert"),       "Relationship: Fruit", 0.33,
         sinon("pomme", "rouge", "vert"), "Relationship: Fruit", 0.33)
