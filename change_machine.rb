require 'rspec'

class ChangeMachine

  def give_change(money)
    

    # return [1] if money == 1
    # return [1, 1, 1, 1] if money == 4
    # return [5] if money == 5
    # return [10] if money == 10
    # return [25] if money == 25

    change =[]
    while money >= 25
      money -= 25
      change << 25
    end
    while money >= 10 && money < 25
      money -= 10
      change << 10
    end
    while money >= 5 && money < 10
      money -= 5
      change << 5
    end
    while money > 0 && money < 5
      money -= 1
      change << 1
    end

    return change
  end
end

machine = ChangeMachine.new
puts "Insert your money and the machine will give you change"
money = gets.chomp.to_i
puts
puts "Here's your change:"
puts machine.give_change(money)

RSpec.describe ChangeMachine do
  describe 'give_change' do
    it 'should return [1] when given 1' do
      machine = ChangeMachine.new
      expect(machine.give_change(1)).to eq([1])
    end

    it 'should return [1, 1, 1, 1] when given 4' do
      machine = ChangeMachine.new
      expect(machine.give_change(4)).to eq([1, 1, 1, 1])
    end

    it 'should return [5] when given 5' do 
    machine = ChangeMachine.new
    expect(machine.give_change(5)).to eq([5]) 
    end

    it 'should return [10] when given 10' do
      machine = ChangeMachine.new
      expect(machine.give_change(10)).to eq([10])
    end
    it 'should return [25] when given 25' do 
      machine = ChangeMachine.new
      expect(machine.give_change(25)).to eq([25])
    end

    it 'should return [1, 5] when given 6' do
      machine = ChangeMachine.new
      expect(machine.give_change(6)).to eq([5, 1])
    end

    it 'should return [10, 5, 1] when given 16' do 
      machine = ChangeMachine.new
      expect(machine.give_change(16)).to eq([10, 5, 1])
      end 
      it 'should return [25, 5, 1] when given 31' do
        machine = ChangeMachine.new
        expect(machine.give_change(31)).to eq([25, 5, 1])
      end
  end
end