filename = ARGV.first  # recevies and argument from when I initally ran the file

txt = open(filename)  #creates a file object for the filename I initally provided

puts "Here's your file #{filename}:" #Prints to console w/filename arg included
print txt.read   #reads the contents of the fileobject and prints to console

print "Type the filename again: "   
file_again = $stdin.gets.chomp     #prints a question, saves response in new variable

txt_again = open(file_again)   #creates fileobject for given filename

print txt_again.read   #reads and prints contents of file object

txt.close
txt_again.close

