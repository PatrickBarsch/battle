feature 'Player name submission' do
  scenario 'Two players can enter their name and it is shown on screen' do
    visit '/'
    fill_in 'player_1', with: 'Robert'
    fill_in 'player_2', with: 'Andy'
    click_button 'Submit Player Names'
    save_and_open_page
    expect(page).to have_content 'Robert vs Andy'
  end
  scenario 'Two players can enter their name and it is shown on screen' do
    visit '/'
    fill_in 'player_1', with: 'Robert'
    fill_in 'player_2', with: 'Andy'
    click_button 'Submit Player Names'
    save_and_open_page
    expect(page).to have_content 'Player 2 Hitpoints: 70'
  end
end