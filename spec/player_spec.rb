require 'player.rb'

describe Player do
  it 'can return name' do
    player = Player.new("tom")
    expect(player.name). to eql("tom")
  end
end
