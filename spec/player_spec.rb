require 'player'

describe Player do
  it 'returns its name when asked' do
    player = Player.new("Rob")
    expect(player.name).to eq ("Rob")
  end
end