describe Player do
  it 'returns its name' do
    player = Player.new("Ol yeller")
    expect(player.name).to eq("Ol yeller")
  end

  it 'has a default hitpoint value' do
    player = Player.new("Ol yeller")
    expect(player.hp).to eq(100)
  end

  describe '#attack' do
    it 'reduces player 2\'s hitpoints by 10' do
      player1 = Player.new("Ol fart")
      player2 = Player.new("Ol bugger")
      expect { player1.attack(player2) }.to change { player2.hp }.by(-10)
    end
  end
end
