feature 'Test infrastructure' do 
  scenario 'It can run our app and check page content' do
    visit('/')
    expect(page).to have_content 'Testing infrastructure working!'
  end
end