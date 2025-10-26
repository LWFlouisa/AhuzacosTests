def cadreref(a1, a2, a3, b1, b2, b3, c1, c2, c3)
  information = [
    [a1, a2, a3],
    [b1, b2, b3],
    [c1, c2, c3],
  ]

  frame_of_reference1 = information[0]
  frame_of_reference2 = information[1]
  frame_of_reference3 = information[2]

  if frame_of_reference1[1] == frame_of_reference2[1]
    puts "The relationship between #{frame_of_reference1[0].tr '.', ','} and #{frame_of_reference2[0].tr '.', ''} is a match for a probability of #{frame_of_reference1[2] * frame_of_reference2[2]}."
  else
    puts "The relationship between #{frame_of_reference1[0].tr '.', ','} and #{frame_of_reference2[0]} is not a match for a probability of #{frame_of_reference2[2]}."
  end

  if frame_of_reference2[1] == frame_of_reference3[1]
    puts "The relationship between #{frame_of_reference2[0].tr '.', ','} and #{frame_of_reference3[0].tr '.', ''} is a match for a probability of #{frame_of_reference1[2] * frame_of_reference2[3]}."
  else
    puts "The relationship between #{frame_of_reference2[0].tr '.', ','} and #{frame_of_reference3[0]} is not a match for a probability of #{frame_of_reference2[2]}."
  end

  if frame_of_reference1[1] == frame_of_reference3[1]
    puts "The relationship between #{frame_of_reference1[0].tr '.', ','} and #{frame_of_reference3[0].tr '.', ''} is a match for a probability of #{frame_of_reference1[2] * frame_of_reference3[3]}."
  else
    puts "The relationship between #{frame_of_reference1[0].tr '.', ','} and #{frame_of_reference3[0]} is not a match for a probability of #{frame_of_reference1[2]}."
  end
end
