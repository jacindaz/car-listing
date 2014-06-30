require 'rails_helper'

feature 'User submits a new manufacturer' do
  scenario 'User creates a new manufacturer' do

    visit new_manufacturer_path

    fill_in 'Name', with: 'Lamborghini'
    select 'Italy', from: 'Country'

    click_button 'Create Manufacturer'

    expect(page).to have_content("Your manufacturer has been saved.")
    expect(page).to have_content('Lamborghini')
    expect(page).to have_content('Italy')
  end

  # test fails
  scenario 'user submits an existing manufacturer' do
    visit new_manufacturer_path

    manufacturer = FactoryGirl.create(:manufacturer)

    fill_in 'Name', with: 'BMV'
    select 'Germany', from: 'Country'

    click_button 'Create Manufacturer'

    expect(page).to have_content "Name has already been taken"
  end

end
