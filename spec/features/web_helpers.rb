def sign_in_and_play
  visit '/'
  fill_in 'player_1', with: 'Robert'
  fill_in 'player_2', with: 'Andy'
  click_button 'Submit Player Names'
end