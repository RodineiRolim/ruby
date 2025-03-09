def caesar_cipher phrase, shift_factor 
    lower_alhpabet = ("a".."z").to_a
    upper_alphabet = ("A".."Z").to_a
    cipher = phrase.split('')
    for i in 0...cipher.length
        for j in 0..25
            if cipher[i] == lower_alhpabet[j]
                new_index = (j + shift_factor) % 26
                cipher[i] = lower_alhpabet[new_index]
                break
            elsif cipher[i] == upper_alphabet[j]
                new_index = (j + shift_factor) % 26
                cipher[i] = upper_alphabet[new_index]
                break
            end    
        end         
    end
    return cipher.join
end

print "Write the text to encrypt: "
phrase = gets.chomp

print "Enter the shift factor: "
shift_factor = gets.chomp.to_i

puts caesar_cipher phrase, shift_factor