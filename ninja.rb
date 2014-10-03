class Ninja

  attr_accessor :name, :weapon

  def initialize(name, weapon)
    @name = name
    @weapon = weapon
  end

  def attack
    case @weapon
      when "sword"
        `say "SWISH!"`
      when "hammer"
        `say "SLAM!"`
      when "dagger"
        `say "SHANK!"`
      when "stars"
        `say "THUD THUD THUD!"`
    end
  end

  def taunt
    `say -v deranged "Ha ha ha! You face #{name}. You face your DOOM!"`
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
Ryu.weapon="hammer"
Ryu.attack
Ryu.weapon = "dagger"
Ryu.attack
Ryu.weapon = "stars"
Ryu.attack
Ryu.name="Fernando"
Ryu.taunt
