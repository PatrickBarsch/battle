feature 'Player name submission' do
  scenario 'Two players can enter their name and it is shown on screen' do
    sign_in_and_play
    save_and_open_page
    expect(page).to have_content 'Robert vs Andy'
  end
  scenario 'We can see Player 2s Hitpoints' do
    sign_in_and_play
    save_and_open_page
    expect(page).to have_content 'Andy Hitpoints: 70'
  end
end