# # celeb_name = "Britney Spears"
# # celeb_age = 33
# #
# # celeb2_name = "Johnny Depp"
# # celeb2_age = 52
# #
# # celeb3_name = "Sylvester Stallone"
# # celeb3_age = 69
# #
# # celeb4_name = "Tim Reen"
# # celeb4_age = 29
#
# celeb = {}
# celeb[:name] = "Brittney Spears"
# celeb[:age] = 33
# celeb[:birthday] = Time.new(1981, 12, 2)
#
#
# celeb2 = {}
# celeb2[:name] = "Johnny Depp"
# celeb2[:age] = 52
#
# celebs = [celeb, celeb2]
#
# # for celeb in celebs do
# #   celeb[:age] += 1
# # end
#
# p Time.now
# p celeb[:birthday]
#
#
# def get_age(birthday)
#    ((Time.now - birthday) / 60 / 60 / 24 / 365).to_i
# end
#
# moshe_bday = Time.new(1997, 9, 28)
#
# puts get_age(moshe_bday)

class Celeb  #do not make plural! singular only
  attr_accessor :name, :birthday, :gender
  def initialize(name, birthday, gender)
    @name = name
    @birthday = birthday
    @gender = gender
  end
  def age
    ((Time.now - @birthday) / 60 /60 /24 /365).to_i
  end
  def act
    "#{@name} is an Actor"
  end
end

britney = Celeb.new("Britney", Time.new(1981, 12, 2), "female")
p britney

carlos = Celeb.new("carlos", Time.new(2016, 6, 29), "male")
p carlos
