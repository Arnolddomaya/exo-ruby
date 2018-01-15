def chiffre_cesar(strs = " what a string", pas= 5)

  strs.downcase!
  res = ''
  alpha = 'abcdefghijklmnopqrstuvwxyz'.split("")
  strs.split("").each do |str|
    if !alpha.include?(str)
      res+=str
    else
      nouveau = str.ord-96+pas
      puts "acienc pas #{nouveau}"
      if nouveau >26
        nouveau-=26
      end
      puts "nouveau #{nouveau}"
      res+= (nouveau+96).chr
    end
  end
  return res
end
