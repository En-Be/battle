feature "hit points" do

  scenario "displays player 2's hit points" do
    sign_in_and_play
    expect(page).to have_content 'Ol buddy: 100/100 HP'
  end

  scenario "player 1 attacks player 2: player 2 hit points reduce by 10" do
    sign_in_and_play
    click_button('Attack!')
    expect(page).to have_content 'Ol buddy: 90/100 HP'
  end

end
