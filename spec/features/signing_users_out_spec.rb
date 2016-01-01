require 'rails_helper'

RSpec.feature 'Signing out signed-in users' do
  before do
    @john = User.create(email: 'john@example.com', password: 'password')
    visit '/'
    click_link 'Sign In'
    fill_in 'Email', with: @john.email
    fill_in 'Password', with: @john.password
    click_button 'Login'
  end
  
  scenario do
    visit '/'
    click_link 'Sign Out'
    expect(page).to have_content('Signed out successfully.')
    expect(page).not_to have_content('Sign Out')
    expect(page).not_to have_content('Signed in as')
  end
end