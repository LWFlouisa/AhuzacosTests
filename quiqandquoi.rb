require_relative "QuiQuandQuoi.rb"
require          "NeoPathfinding"

gabbler = Gabbler.new

a = quiquandquoi("Anatta",
                 "travailles avec le velo a l'cole",
                 "en l'heure de 6:00.A.M.",

                 cette("velo", "rouge"),
                 maisette("l'ecole", "vert"),
                 sinon("route", "rouge", "vert"))

b = gabbler.learn("#{a}")

2.times do
  get_statistics(:trivia_une,   b[0],
                 :trivia_deux,  b[1],
                 :trivia_trois, b[2])
                 
                 dynamic_reward_allocation
end
