def chiffre_cesar(strs = "What a string!", pas= 5)
  res = ''
  alpha = 'abcdefghijklmnopqrstuvwxyz'.split("")
  alphaMaj= 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'.split("")
  strs.split("").each do |str|
    if alpha.include?(str)
      nouveau = alpha.index(str)+pas
      if nouveau >25
        nouveau-=26
      end
      res+= alpha[nouveau].to_s
    elsif alphaMaj.include?(str)
      nouveau = alphaMaj.index(str)+pas
      if nouveau >25
        nouveau-=26
      end
      res+= alphaMaj[nouveau].to_s
    else
      res+=str
    end
  end
  return res
end


puts chiffre_cesar("cMJFMEZU&É111 zzZ")
