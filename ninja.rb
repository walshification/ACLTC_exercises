class Ninja

  def initialize(name, weapon)
    @name = name
    @weapon = weapon
  end

  def change_name(new_name)
    @name = new_name
    "My name is #{@name}."
  end

  def change_weapon(new_weapon)
    @weapon = new_weapon
    "ha-HA!"
  end

  def attack
    if @weapon == "sword"
      `say "SWISH!"`
    elsif @weapon == "hammer"
      `say "SLAM!"`
    elsif @weapon == "dagger"
      `say "SHANK!"`
    elsif @weapon == "stars"
      `say "THUD THUD THUD!"`
    end
  end

end

Ryu = Ninja.new("Ryu", "sword")
Ken = Ninja.new("Ken", "hammer")
Bob = Ninja.new("Bob", "dagger")
Victoria = Ninja.new("Victoria", "stars")

Ryu.attack
Ken.attack
Bob.attack
Victoria.attack

Ryu.attack
Ryu.weapon("hammer")
Ryu.attack
Ryu.weapon("dagger")
Ryu.attack
Ryu.weapon("stars")
Ryu.attack
