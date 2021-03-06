require_relative 'powers.rb'
require_relative 'supervillain'
require_relative 'battle'

class Superhero

  include Powers
  include Battle

  attr_reader :power_level, :name

  def initialize(name, power)
    @name = name
    eval(power)
  end

  def use_power
    p "#{ @name } is now #{@power}!"
  end
end

flash = Superhero.new("The Flash", "super_speed")
flash.use_power


dr_strange = Superhero.new("Dr. Strange", "magic")
dr_strange.use_power
dr_strange.do_battle(flash)

dr_doom = SuperVillain.new("DR. DOOM", "magic")
dr_doom.use_power

flash.do_battle(dr_doom)
