def caesar_cipher(string, interval)
  cipherlist = []
  arraycounter = 0 
  counter = 0 
  newword = ""
  cipherlist = string.split()
  #figure out how many entries are in the array. Amount of entries = amount of words
  pieces = cipherlist.length()
  #Iterate over every word (loop)
  cipherlist.each do |word|
    #Iterate over every letter inside the loop above
    word.split("").each do |letter|
      puts("Printing original letter #{letter}")
      #adding 'interval' to the numeric value of the letter in the original word
      newletter = (letter.ord + interval).chr
      puts ("Printing newletter #{newletter}")
      newword += newletter
      puts ("Printing newword #{newword}")
      counter += 1

      if word.length == counter
        cipherlist[arraycounter] = newword
        puts ("This is word number: #{arraycounter} #{cipherlist[arraycounter]}")
        newword = ""
        arraycounter += 1
        counter = 0
      end
      
    end
  end
  
  
  # use methods .ord to convert to numerical expression. Add 'interval' to the numerical expression
  
  # Reconvert the numerical expression to character representation. 
  
end

=begin
Treehouse Forum suggestion:
.ord - converts characters to their numerical representation

2.1.2 :001 > "a".ord
 => 97 
.chr - converts numbers back to character representation

2.1.2 :002 > 97.chr
 => "a" 
2.1.2 :003 > 98.chr
 => "b" 



# "Bmfy f xywnsl!"

=end 

caesar_cipher("What a string!", 5)