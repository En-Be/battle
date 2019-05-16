#require_relative '../../app'

feature "entering player names" do

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



  # next test would include an erb file and check that is contains the params in body

end
