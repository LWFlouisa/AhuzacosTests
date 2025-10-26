require_relative "QuiQuandQuoi.rb"
require          "NeoPathfinding"

gabbler = Gabbler.new

a = quiquandquoi("Anatta",
                 "travailles avec le velo a l'cole",
                 "en l'heure de 6:00.A.M.",

                 cette("velo", "rouge"),
                 maisette("l'ecole", "vert"),
                 sinon("route", "rouge", "vert"))

b = gabbler.learn(a)

c = b

2.times do
  get_statistics(:trivia_une,   c[0],
                 :trivia_deux,  c[2],
                 :trivia_trois, c[2])
end
