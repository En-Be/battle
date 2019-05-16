#require_relative '../../app'

feature "battle" do

  scenario "checks that the homepage says testing infrastructure working!" do
    visit('/test')
    expect(page).to have_content "Testing infrastructure working"
  end

  scenario "checks that the homepage has forms for both names" do
    visit('/')
    expect(page).to have_field('name1')
    expect(page).to have_field('name2')
  end

  scenario "play stores names" do
    sign_in_and_play
    expect(page).to have_content 'Ol pal'
    expect(page).to have_content 'Ol buddy'
  end

  scenario "displays player 2's hit points" do
    sign_in_and_play
    expect(page).to have_content 'Ol buddy: 100/100 HP'
  end

  scenario "player 1 attacks player 2: player 2 hit points reduce by 10" do
    sign_in_and_play
    click_button('Attack!')
    expect(page).to have_content 'Ol buddy: 90/100 HP'
  end

  # next test would include an erb file and check that is contains the params in body

end
