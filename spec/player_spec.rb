describe Player do
  it 'returns its name' do
    player = Player.new("Ol yeller")
    expect(player.name).to eq("Ol yeller")
  end
end
