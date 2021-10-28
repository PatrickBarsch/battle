feature 'Attacking' do
  scenario 'shows a confirmation, after attacking player 2' do
    sign_in_and_play
    click_button("Attack Player 2")
    expect(page).to have_content ("Robert attacked Andy")
  end
  scenario 'reduces player 2 hitpoints by 10' do
    sign_in_and_play
    click_button("Attack Player 2")
    click_button("OK")
    expect(page).to have_content ("Andy Hitpoints: 60")
  end
end