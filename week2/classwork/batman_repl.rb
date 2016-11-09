
def say(name, statement)
  if name
    puts "#{name} : #{statement}"
  else
    puts statement
  end
end

def ask_question(question,options)
  say nil, question
  say "Options", options
  gets.chomp.downcase.gsub(" ","")
end



def handle_sidekick
  if sidekick == "batgirl"
    puts "Batgirl: Suit me up, Uncle Alfred!"
  elsif sidekick == "robin"
    puts "RObin: Holy rusted metal Batman!"
  else
    puts "Fine, I'll choose one for you."
    sidekick == "robin"
  end
end
#intro
# puts "After all your hard work you have become batman!"
say(nil,"After all your hard work you have become batman!")
# question
sidekick = ask_question("Who do you want your sidekick to be?", "Options: Batgirl or Robin")

handle_sidekick(sidekick)


#question 2
weapon = ask_question("Awesome! Let's get your sidekick a weapon to defend themselves.", "Options: batarang, fists, flashlight")



case weapon
when "batarang"
  puts "#{sidekick.capitalize}: Awesome a #{weapon}. Thanks Batman!"
when "fists"
  puts "#{weapon.capitalize}: I don't need a weapon. I will just use my #{weapon}, like you batman."
when "flashlight"
  puts "#{weapon.capitalize}: Uhh thanks... I will make sure to keep the light on you."
else
  puts "Don't be selfish. Share your toys with your #{sidekick}."
  weapon = "batarang"
end


begin
  enemy = ask_question("Who do we want to fight?","joker","penguin","riddler")
end until valid_enemies.include?(enemy)

case enemy
when "riddler"
  puts "Riddler:Puzzle me this Batman?"
when "joker"
  puts "Ha ha ha ha..ha ha!"
when "penguin"
  puts "Penguin: Rweh, Rweh, Rweh... Rweh"
else
  puts "This should never happen"
end
