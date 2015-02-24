def caesar_cipher (string, num)
	phrase = string.split("")
	shift = (num.to_i)%26
	phrase.each do  |letter|
		if letter =~ (/[A-zA-Z]/)
				shift.times do
				letter.next!
				end				
		end
		if letter.length > 1
			letter[0] = ''
		end
	end
	puts "\""+ string + "\"" + " shifted by " + num.to_s + " becomes " + "\"" + phrase.join("") + "\""
end
caesar_cipher("Hello World!", 7)
caesar_cipher("Special characters !@#$%^&*()-=+", 2)