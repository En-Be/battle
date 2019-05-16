

def sign_in_and_play
  visit('/')
  fill_in('name1', with: 'Ol pal')
  fill_in('name2', with: 'Ol buddy')
  click_button("submit")
end
