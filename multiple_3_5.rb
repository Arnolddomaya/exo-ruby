class ExoRuby

  def multiple_3_5
    res = 0
    (1..1000).each do |i|
      if i.%(3).zero? || i.%(5).zero?
        res+=i
      end
    end
    return res
  end



end


if __FILE__ == $0
  ma_classe = ExoRuby.new
  puts "Resultat de somme de 1000 prémier entiers multiple de 3 ou 5: #{ma_classe.multiple_3_5()}"

end
