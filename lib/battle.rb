module Battle
  def do_battle(supervillain)
    p "#{@name} is now battling #{supervillain.name}"
    if @power_level > supervillain.power_level
      p "#{@name} Wins"
    else
      p "#{supervillain.name} Wins"
    end
  end
end
