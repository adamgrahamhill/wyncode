cat_hat = []

100.times do
  cat_hat.push(true)
end

#p cat_hat  #Above code populates cat_hat array w/ 100 trues. True == hat


pass = 1       #counter for which pass of the array

# 3.times do

cat_hat.length.times do
  cat_hat.each_with_index do |cat, pos|
    if (pos + 1) % pass == 0
        if cat == true
          cat_hat[pos] = false
        else
          cat_hat[pos] = true
        end
    end
  end
pass += 1
end

# cat_hat.each_with_index do |h, n|  #Changing into Emjois
#   if h == true
#     cat_hat[n] = "🎩"
#     else
#       cat_hat[n] = "🙀"
#     end
# end
print cat_hat

x = Array.new(100,true)  #????
