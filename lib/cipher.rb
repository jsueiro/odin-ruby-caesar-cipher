
def caesar_cipher(text, shift)

    # holds the encr text
    encrypted = "" 

    text.split("").each do |c|
        
        ascii_char = c.ord
        shifted = ascii_char + shift 
        
        if ascii_char.between?(65,90)
            # upcase

            if (shifted > 90)
                encrypted += (shifted - 26).chr
            else
                encrypted += shifted.chr 
            end

        elsif ascii_char.between?(97,122)
            # downcase

            if (shifted > 122)
                encrypted += (shifted - 26).chr
            else
                encrypted += shifted.chr 
            end
 
            
        else
            #keep as is
            encrypted += c

        end
    end

    encrypted

end




# alternative method with arrays
# def caesar_cipher(text, shift)
#     # create two arrays with upcase and lowcase
#     uppercase_letters = ("A".."Z").to_a
#     lowercase_letters = ("a".."z").to_a

#     # holds the encr text
#     encrypted = "" 

#     # convert text to arr, for each char compare against up or lowcase, if found add the shifted char, else just the char
#     text.split("").each do |c|
#         if uppercase_letters.include? c
#             encrypted += uppercase_letters[(uppercase_letters.index(c) +shift) % 26]
#         elsif lowercase_letters.include? c
#             encrypted += lowercase_letters[(lowercase_letters.index(c) +shift) % 26]
#         else
#             encrypted += c
#         end
#     end

#     encrypted

# end
