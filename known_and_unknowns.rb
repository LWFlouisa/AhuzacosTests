## This handles known relationships
a = cadreref(cette("pomme", "rouge"),         "Relationship: Fruit", 0.33,
             maisette("pomme", "vert"),       "Relationship: Fruit", 0.33,
             sinon("pomme", "rouge", "vert"), "Relationship: Fruit", 0.33)

2.times do
  get_statistics(:cette,    a[0],
                 :maisette, a[1],
                 :sinon,    a[2])
                 
                 dynamic_reward_allocation
end

## This handles unknown relationships.
h = generate_dialogue
i = generate_dialogue
j = generate_dialogue

a = cadreref(h, "Relationship: Unknown", 0.33,
             i, "Relationship: Unknown", 0.33,
             j, "Relationship: Unknown", 0.33)

2.times do
  get_statistics(:cette,    a[0],
                 :maisette, a[1],
                 :sinon,    a[2])
                 
                 dynamic_reward_allocation
end
