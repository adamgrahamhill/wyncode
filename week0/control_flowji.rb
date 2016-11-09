
checkerboard_a = []

counter = 0
while counter < 10
  if counter % 2 == 0
    checkerboard_a.push("a")
    counter += 1
  else
    checkerboard_a.push("b")
    counter += 1
  end
end

  print checkerboard_a
