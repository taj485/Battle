
feature 'Enter player names' do
  scenario 'Can submit a form with names and check names are on screen' do
    sign_in_and_play
    expect(page).to have_content 'Player1 vs Player2'
  end

  feature 'Player 2\'s points' do
    scenario 'Can see player 2\'s hit points' do
      visit('/')
      fill_in 'player_1_name', with: 'Player1'
      fill_in 'player_2_name', with: 'Player2'
      click_button 'Submit'
      expect(page).to have_content 'Player2\'s hit points: 10'
    end
  end
end
