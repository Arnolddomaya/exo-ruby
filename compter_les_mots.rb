def jean_michel_data(strs="jaquar below how go",dico= ["below", "down", "go","go","go", "going", "horn", "how", "howdy", "it","how", "i", "low", "own", "part", "partner", "sit"])
  res = {}
  strs = strs.split()
  strs.each do |str|
    res[str]= 0
    dico.each do |elem|
      if str == elem
        res[str]+=1
      end
    end
  end
  puts res
end


jean_michel_data()
