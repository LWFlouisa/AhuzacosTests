# Depends on when events happen. 
# Commitee of specialists. 
# Coincides with traumatic events. 
# That leader dresses formally. 
# But others wear military uniforms. 
# Otherwise both dress casually. 

# I'm confident it is not [ what Commitee of specialists ] as it has only 0.054450000000000005 probability.
# I'm confident it is not [ what Commitee of specialists ].
# I'm confident it is not [ what Commitee of specialists ].
# I'm less unconfident it is not [ what Commitee of specialists ].
# I'm sure it is [ what Commitee of specialists ].
# I'm confident it is not [ when Depends on when events happen ] as it has only 0.054450000000000005 probability.
# I'm confident it is not [ when Depends on when events happen ].
# I'm confident it is not [ when Depends on when events happen ].
# I'm less unconfident it is not [ when Depends on when events happen ].
# I'm sure it is [ when Depends on when events happen ].

# WHEN
# Le relation de reference entre Around 7:00 P,M, and Otherwise depends on when events happen est non un match pour un probabilite de 0.165.
# Le relation de reference entre Otherwise depends on when events happen, and Lecturers in podcasts est non un match pour un probabilite de 0.165.
# Le relation de reference entre Around 7:00 P,M, and Lecturers in podcasts est non un match pour un probabilite de 0.165.

# WHAT
# Le relation de reference entre Anomalous dolls of different types, and Varies from dreamer to next est non un match pour un probabilite de 0.165.
# Le relation de reference entre Varies from dreamer to next, and Commitee of specialists est non un match pour un probabilite de 0.165.
# Le relation de reference entre Anomalous dolls of different types, and Commitee of specialists est non un match pour un probabilite de 0.165.

# HOW
# Le relation de reference entre Blend in from scene to scene, and Coincides with traumatic event est non un match pour un probabilite de 0.165.
# Le relation de reference entre Coincides with traumatic event, and Podcasts recorded every day est un match pour un probabilite de 0.027225000000000003.
# Le relation de reference entre Blend in from scene to scene, and Podcasts recorded every day est non un match pour un probabilite de 0.165.


require "NeoPathfinding"

#quandquoicomme("Around 6:00 A.M.",         "Around 6:00 A.M.",          "Around 6:00 A.M.",          "Around 6:00 A.M.",          "Around 6:00 A.M.",
#              "A black cat",               "A black crow",              "A black rat",               "A white dove",              "A white turkey",
#              "climbed a wall.",           "flew onto a sign.",         "crawled into a hole.",      "sang the song of peace.",   "is eaten for thanksgiving.",
#              "That cat is black",         "That bird is black",        "That mouse is black",       "That dove is white.",       "That turkey is cooked.",
#              "But that turkey is white.", "But that dove is white.",   "But that turkey is white.", "But that cat is black.",    "But that crow is black.",
#              "Otherwise both are white.", "Otherwise both are white.", "Otherwise both are white.", "Otherwise both are white.", "Otherwise both are white.")
              
quandquoicomme("Between midnight to 4 A.M.",   "Normal church going hours",    "Podcasts at different times",         "Depends on when events happen",      "Around 7:00 P.M.",
              "Varies from dreamer to next",   "Preists dress in robes",       "Lecturers in podcasts",               "Commitee of specialists",            "Anomalous dolls of different types",
              "blend in from scene to scene",  "Calls believers into room",    "Presents ufos and related",           "Coincides with traumatic events",    "Tends to wait on bookselfs or hovers",
              "That dream is ambiguous",       "That preist is in black",      "That talkshow hosts changes outfits", "That leader dresses formally",       "That doll wears victorian clothes.",
              "But that dream is normal.",     "But that preist is in white.", "But the guest is wearing all black.", "But others wear military uniforms.", "But that one wears barbie outfits.",
              "Otherwise dream is nightmare.", "Otherwise preists are nude.",  "Othwerise both wear all black.",      "Otherwise both dress casually.",     "Otherwise both wear modern clothes.")
              
#quandquoicomme("Around 6:00 A.M.",               "Around 6:00 A.M.",                "Around 6:00 A.M.",                "Around 6:00 A.M.",               "Around 6:00 A.M.",
#              "A black cat",                     "A black crow",                    "A black rat",                     "A white dove",                    "A white turkey",
#              "climbed a wall.",                 "flew onto a sign.",               "crawled into a hole.",            "sang the song of peace.",         "is eaten for thanksgiving.",
#              cette("chatte", "noir"),           cette("oiseau", "noir"),           cette("souris", "noir"),           cette("pidgeon", "balnc"),         cette("dinde", "flambe"),
#              maisette("dinde", "blanc"),        maisette("pidgeon", "blanc"),      maisette("dinde", "blanc"),        maisette("chatte", "noir"),        maisette("pidgeon", "blanc"),
#              sinon("le deux", "noir", "blanc"), sinon("le deux", "noir", "blanc"), sinon("le deux", "noir", "blanc"), sinon("le deux", "noir", "blanc"), sinon("le deux", "noir", "blanc"))
              
current_case = $current_case
size_limit   = current_case.size.to_i
index        = 0

size_limit.times do

  gabbler = Gabbler.new

  #corpus    = File.read(current_case)

  gabbler.learn(current_case[index])

  print gabbler.sentence; puts " "

  sleep(0.5)

  gabbler.unlearn!
  
  index = index + 1
end

2.times do
  get_statistics(:when, current_case[0],
                 :what, current_case[1],
                 :how,  current_case[2])
                 
                 dynamic_reward_allocation
end

puts "WHEN"
cadreref("Around 7:00 P.M.",                         "Relationship: Haunted Dolls", 0.165,
         "Otherwise depends on when events happen.", "Relationship: Dreams",        0.165,
         "Lecturers in podcasts",                    "Relationship: Conspiracies",  0.165)

puts "WHAT"
cadreref("Anomalous dolls of different types.", "Relationship: Haunted Dolls", 0.165,
         "Varies from dreamer to next.",        "Relationship: Dreams",        0.165,
         "Commitee of specialists",             "Relationship: Psyops",        0.165)
         
puts "HOW"
cadreref("Blend in from scene to scene.",   "Relationship: Haunted Dolls",         0.165,
         "Coincides with traumatic event.", "Relationship: Conspiracy And Psyops", 0.165,
         "Podcasts recorded every day.",    "Relationship: Conspiracy And Psyops", 0.165)
