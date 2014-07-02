require 'rails_helper'

feature 'user submits a new car' do

  scenario 'user submits a new car' do
    manufacturer = FactoryGirl.create(:manufacturer)
    visit manufacturer_path(manufacturer)

    fill_in '* Color', with: "Red"
    select '2014', from: "Year"
    fill_in 'Mileage', with: 100
    fill_in 'Description', with: "sample description"
    click_button 'Submit Car'

    expect(page).to have_content "Red"
    expect(page).to have_content "2014"
    expect(page).to have_content "100"
  end

  # scenario 'user submits blank car' do
  #   manufacturer = FactoryGirl.create(:manufacturer)
  #   visit manufacturer_path(manufacturer)

  #   click_button 'Create Car'

  #   within ".input.menu_item_name" do
  #     expect(page).to have_content "can't be blank"
  #   end

  # end

  scenario 'user submits an existing car for a particular manufacturer' do
    car = FactoryGirl.create(:car)
    visit manufacturer_path(car.manufacturer_id)


    fill_in '* Color', with: car.color
    select car.year, from: 'Year'
    fill_in 'Mileage', with: car.year
    fill_in 'Description', with: car.description
    click_button 'Submit Car'

    expect(page).to have_content "has already been taken"
  end

end
