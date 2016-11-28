require 'spec_helper'

feature 'The application should be hosted on port 4000.' do
  scenario 'The application should be live.' do
    visit('/')
    expect(page.status_code).to eq(200)
    expect(page).to have_content("We're live!")
  end
end

feature 'You can manually enter a key and value into a query string.' do
  scenario 'Key data is saved and viewable.' do
    visit('/set?Colour=Blue')
    visit('/get')
    expect(page).to have_content('Colour')
  end
end
