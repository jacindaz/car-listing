feature 'user views the list of cars' do

  scenario 'user views the list of all cars' do
    cars = FactoryGirl.create(:car, 3)

    visit cars_path

    cars.each do |car|
      expect(page).to have_content(car.color)
      expect(page).to have_content(car.year)
    end

  end

end
