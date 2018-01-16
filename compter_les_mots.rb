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
  return res
end

def get_file_as_string(filename)
  data = ''
  f = File.open(filename, "r")

  f.each_line do |line|
    data <<line
  end
  return data
end

william_prose = get_file_as_string 'william.txt'
william_prose=william_prose.split()

dictionnary = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be","are"]

resultat_will = jean_michel_data dictionnary.join(" "), william_prose
puts "le resultat de la recherche sur le bouquin de will a donné : #{resultat_will}"


# mots_bizards = get_file_as_string 'motsBizard.txt'
# puts mots_bizards
# resultat_bizard = jean_michel_data mots_bizards.split(), william_prose
# puts "Gros mots dans l'oeuvre de Sheaks : #{resultat_bizard}"
