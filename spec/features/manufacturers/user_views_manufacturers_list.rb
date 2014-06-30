require 'rails_helper'

feature 'user views a list of manufacturers' do

  scenario 'user views a list of manufacturers' do

    manufacturer = FactoryGirl.create(:manufacturer)
    visit manufacturers_path

    expect(page).to have_content "BMW"
    expect(page).to have_content "Germany"

  end

end
