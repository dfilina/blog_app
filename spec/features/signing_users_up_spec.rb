require 'rails_helper'

RSpec.feature 'Users signup' do
  scenario 'with valid credentials' do
    visit '/'
    click_link 'Sign Up'
    fill_in 'user_email', with: 'user@example.com'
    fill_in 'user_password', with: 'password'
    fill_in 'user_password_confirmation', with: 'password'
    click_button 'Sign Up'
    
    expect(page).to have_content('You have signed up successfully')
  end
end