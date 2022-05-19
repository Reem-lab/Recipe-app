require 'rails_helper'

RSpec.describe 'User index', type: :system do
  before :each do
    Food.create(name: 'apple', measurement_unit: '3kg', price: 4.5)
    visit new_user_session_path
    fill_in 'Email', with: 'tom@gmail.com'
    fill_in 'Password', with: '123456'
    click_button 'Log in'
  end

  describe 'index page for list foods' do
    it 'I can see the username of all other users.' do
      expect(page).to have_content('apple')
    end

    it 'I can see the measurement unit there' do
      expect(page).to have_content('meausrement_unit: 3kg')
    end

    it 'I can see the button add food' do
      expect(page).to have_content('Add food')
    end

    it "When I click on add foos, I am redirected to that form add food page." do
      click_link 'Add food'
      expect(page.current_path).to have_content("foods/#{food.id}")
    end
  end
end