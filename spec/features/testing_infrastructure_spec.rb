
feature 'Enter player names' do
  scenario 'Can submit a form with names and check names are on screen' do
    sign_in_and_play
    expect(page).to have_content 'Player1 vs Player2'
  end
end

  feature 'Player 2\'s points' do
    scenario 'Can see player 2\'s hit points' do
      sign_in_and_play
      expect(page).to have_content 'Player2\'s hit points: 10'
    end
  end

feature 'Player 2\'s attack' do
  scenario 'Can attack player 2 and get confirmation' do
    sign_in_and_play
    click_button "attack"
    expect(page).to have_content 'Player1 attacked Player2'
  end
end
