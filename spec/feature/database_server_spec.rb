require 'spec_helper'

feature 'The application should be hosted on port 4000.' do
  scenario 'Visiting Homepage' do
    visit('/')
    expect(page.status_code).to eq(200)
    expect(page).to have_content("We're live!")
  end
end
