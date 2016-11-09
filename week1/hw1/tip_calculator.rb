puts "How much is the bill?"
bill = gets.to_f
puts "The bill is $#{bill}"
total_pennies = (bill * 120) # bill w/tip in pennies 1.2 * 100
puts total_pennies
p total_pennies
total = total_pennies / 100
puts "The total is $#{'%.2f' % total}"



#edit this program to gets the total bill from the user,
#calculate the total plus a 20% tip,
#and output that total to the screen.
