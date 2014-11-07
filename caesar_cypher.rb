def downcase_cipher(word, letter, interval)
  @arraycounter = 0 
  @counter = 0 
  @newword = ""
  if letter.ord() + interval > 122 
    resultant = (letter.ord()+interval) - 122
    newletter = (97 + resultant).chr
    @newword += newletter
    @counter += 1
    if word.length == @counter
      cipherlist[@arraycounter] = @newword
      puts ("This is word number: #{@arraycounter} #{cipherlist[@arraycounter]}")
      @newword = ""
      @arraycounter += 1
      @counter = 0
    end
  else
    newletter = (letter.ord + interval).chr
    puts ("Printing newletter #{newletter}")
    @newword += newletter
    puts ("Printing @newword #{@newword}")
    @counter += 1
    if word.length == @counter
      cipherlist[@arraycounter] = @newword
      puts ("This is word number: #{@arraycounter} #{cipherlist[@arraycounter]}")
      @newword = ""
      @arraycounter += 1
      @counter = 0
    end
  end
  return newletter     
end
def upcase_cipher(word, letter, interval)
  if letter.ord() + interval > 90 
    @arraycounter = 0 
    @counter = 0 
    @newword = ""
    resultant = (letter.ord()+interval) - 90
    newletter = (65 + resultant).chr
    @newword += newletter
    @counter += 1
    if word.length == @counter
      cipherlist[@arraycounter] = @newword
      puts ("This is word number: #{@arraycounter} #{cipherlist[@arraycounter]}")
      @newword = ""
      @arraycounter += 1
      @counter = 0
    end
  else
    newletter = (letter.ord + interval).chr
    puts ("Printing newletter #{newletter}")
    @newword += newletter
    puts ("Printing @newword #{@newword}")
    @counter += 1
    if word.length == @counter
      cipherlist[@arraycounter] = @newword
      puts ("This is word number: #{@arraycounter} #{cipherlist[@arraycounter]}")
      @newword = ""
      @arraycounter += 1
      @counter = 0
    end
  end
  return newletter
end
def caesar_cipher(string, interval)
  cipherlist = []
  
  cipherlist = string.split()
  #Iterate over every word (loop)
  cipherlist.each do |word|
    word.split("").each do |letter|
      puts("Printing original letter #{letter}")
      if letter == letter.upcase
        @newword = upcase_cipher(word, letter, interval)
      else
        if letter == /^[a-z]*$/
          @newword += downcase_cipher(word, letter, interval)
        else 
          @newword+= letter
          puts @newword
        end
      end
    end
end
end  

caesar_cipher("What a string!", 5)


=begin
OK, I have a partial solution: your scopes are wrong. 
You have to change all instances of variables arraycounter, 
counter and newword into @arraycounter, @counter and @newword. 
You will get a result, no errors, but the result won't be what you were looking for. 
And I still don't know what this should do: if letter == [a-z]

OK, so first you have to deal with line 76:

if letter == [a-z]
Right now they seem to be names of variables that have no value. 
You probably want to put them in quotes, do an .ord method to convert them into numbers 
and then back again into a character.

In line 79, you are trying to operate on a value that is nil. + is a method, it adds stuff. 
But nil is not a numerical and it's not a string value, so it doesn't know what to do with it. 
You could do something like this:
newword = ""
newword += letter
But then it will give you an error in line 52 and then some more errors along the way 
(including the error in variable @counter - it also has a nil value and you're trying to add something to it).

=end