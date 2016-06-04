require_relative 'powers.rb'
require_relative 'supervillain'
require_relative 'battle'

class SuperVillain

  include Powers
  include Battle

  attr_reader :power_level, :name

  def initialize(name, power)
    @name = name
    eval(power)
  end

  def use_power
    p "#{ @name } is now #{@power}, maniacally!"
  end

end

killer_croc = SuperVillain.new("Killer Croc", "super_speed")
killer_croc.use_power

dr_doom = SuperVillain.new("DR. DOOM", "magic")
dr_doom.use_power
