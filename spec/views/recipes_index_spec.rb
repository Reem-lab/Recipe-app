require 'rails_helper'

RSpec.describe 'Recipe index', type: :feature do
  before :each do
    visit new_user_session_path
    fill_in 'Email', with: 'tom@gmail.com'
    fill_in 'Password', with: '123456'
    click_button 'Log in'
    visit recipes_path
  end

  it 'Displays the name of the Recipe' do
    expect(page).to have_content('Recipe 1')
  end

  it 'Displays a part of the description' do
    expect(page).to have_content('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do...')
  end
end
