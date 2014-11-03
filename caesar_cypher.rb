def caesar_cipher(string, interval)
  cipherlist = []
  cipherlist = string.split()
  cipherlist.each do |letters|
      letters.each do |letter|
        puts letter
      end
  end
  
end
  


caesar_cipher("What a string!", 5)
# "Bmfy f xywnsl!"