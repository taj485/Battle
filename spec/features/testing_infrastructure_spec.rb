
feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    # visit('/')
    # expect(page).to have_content 'Testing infrastructure working!'
  end
end

feature 'Enter player names' do
  scenario 'Can submit a form with names and check names are on screen' do
    sign_in_and_play
    expect(page).to have_content 'Player1 vs Player2'
  end
end
