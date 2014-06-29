require 'rails_helper'

feature 'User submits a new manufacturer' do
  scenario 'User creates a new manufacturer' do

    visit new_manufacturer_path

    fill_in 'Name', with: 'Lamborghini'
    fill_in 'Country', with: 'Italy'

    click_button 'Submit'

    expect(page).to have_content("Your manufacturer has been saved.")
    expect(page).to have_content('Lamborghini')
    expect(page).to have_content('Italy')

    expect(manufacturer.count).to eq(1)
  end

end
