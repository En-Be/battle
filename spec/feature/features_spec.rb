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
    visit('/')
    fill_in('name1', with: 'Ol pal')
    fill_in('name2', with: 'ol buddy')
    click_button("submit")
    expect(page).to have_content 'Ol pal'
    expect(page).to have_content 'ol buddy'
  end

  # next test would include an erb file and check that is contains the params in body

end
