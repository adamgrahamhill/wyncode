ciphertext = "Dahk Sujykza!!"

(0..26).each do |n|
	candidate = ciphertext.chars.map do |c|
		next c unless c =~ /[a-zA-Z]/
		letter = c.upcase.ord - 65
		pt_letter = (letter + n) % 26
		(pt_letter + 65).chr
	end.join
	puts "#{n}:\t#{candidate}"
end