require 'rails_helper'

RSpec.describe 'Shopping List', type: :feature do
  before :each do
    visit new_user_session_path
    fill_in 'Email', with: 'tom@gmail.com'
    fill_in 'Password', with: '123456'
    click_button 'Log in'
    visit shopping_list_path
  end

  it 'Displays the amount of items fo buy' do
    expect(page).to have_content('Amount of foods items to buy : 3')
  end

  it 'Displays the total value' do
    expect(page).to have_content('Total value of foods needed : 101.0 $')
  end

  it 'Displays the list of food to buy' do
    expect(page).to have_content('Potato')
    expect(page).to have_content('Tomato')
    expect(page).to have_content('Apple')
  end
end
