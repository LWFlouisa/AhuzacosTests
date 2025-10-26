def quiquandquoi(g, h, i, j, k, l)
  # "Anatta"
  # "travail avec il velo a l'ecole."
  # "En le heure de 6:00 A.M."

  # cette(velo, rouge)
  # maisette(lecole, vert)
  # sinon(route, rouge, vert)

  a = :qui,   g
  b = :quoi,  h
  c = :quand, i

  d = :cette,    j
  e = :maisette, k
  f = :sinon,    l

  core_knowledge = [
    [[a, a, a],
     [a, a, b],
     [a, a, c]],
   
    [[b, b, a],
     [b, b, b],
     [b, b, c]],
   
    [[c, c, a],
     [c, c, b],
     [c, c, c]],
  ], [
    [[d, d, d],
     [d, d, e],
     [d, d, f]],
   
    [[e, e, d],
     [e, e, e],
     [e, e, f]],

    [[f, f, d],
     [f, f, e],
     [f, f, f]],
  ]

  who_what_when        = core_knowledge[0]
  cette_maisette_sinon = core_knowledge[1]
  
  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  say_what    = who_what_when[cur_row][cur_col][cur_arr]
  new_outcome = cette_maisette_sinon[cur_row][cur_col][cur_arr]
  
  $datapoint = say_what, new_outcome
end
