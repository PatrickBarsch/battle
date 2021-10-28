feature 'Player name submission' do
  scenario 'Two players can enter their name and it is shown on screen' do
    sign_in_and_play
    # save_and_open_page
    expect(page).to have_content 'Robert vs Andy'
  end
end