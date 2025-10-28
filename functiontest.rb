require "NeoPathfinding"

def who_when
  quiquoi("Andy",      "Albert",    "Bethany",
          "6:00 A.M.", "6:00 A.M.", "6:00 A.M.",

          cette("pomme", "rouge"),         cette("pomme", "rouge"),         cette("pomme", "rouge"),
          maisette("pomme", "vert"),       maisette("pomme", "vert"),       maisette("pomme", "vert"),
          sinon("pomme", "rouge", "vert"), sinon("pomme", "rouge", "vert"), sinon("pomme", "rouge", "vert"))

end

def frame_of_reference
  cadreref(cette("pomme", "rouge"),         "Relationship: Fruit",     0.33,
           maisette("pomme", "vert"),       "Relationship: Fruit",     0.33,
           sinon("pomme", "rouge", "vert"), "Relationship: Not Fruit", 0.33)
end

def who_when_what
  a = quiquandquoi("Anatta",                "travailles avec le velo a l'cole",       "en l'heure de 6:00 A.M.",
                   "Cette velo est rouge.", "Mais cette l'ecole est ne rouge.", "Le route es ne rouge ou vert.")

  b = quiquandquoi("Pierre",                "travailles avec le velo a l'cole",       "en l'heure de 6:00 A.M.",
                   "Cette velo est rouge.", "Mais cette l'ecole est ne rouge.", "Le route es ne rouge ou vert.")

  c = quiquandquoi("Jacquez",               "travailles avec le velo a l'cole",       "en l'heure de 6:00 A.M.",
                   "Cette velo est rouge.", "Mais cette l'ecole est ne rouge.", "Le route es ne rouge ou vert.")

  2.times do
    d = get_statistics(:cette,    a,
                       :maisette, b,
                       :sinon,    c)
               
                       dynamic_reward_allocation
  end
end

def when_who
  quandqui("At nine o clock", "Bob", cette("pomme", "rouge"), maisette("pomme", "vert"), sinon("pomme", "rouge", "vert"))
end

def what_if
  quoisi("lapine", "mort")
end
