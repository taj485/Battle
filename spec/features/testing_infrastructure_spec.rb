
feature 'Enter player names' do
  scenario 'Can submit a form with names and check names are on screen' do
    visit('/')
    fill_in 'player_1_name', with: 'Player1'
    fill_in 'player_2_name', with: 'Player2'
    click_button 'Submit'
    expect(page).to have_content 'Player1 vs Player2'
  end
end
