require 'rails_helper'

describe 'when an unathenticated user visits the root path' do
  it 'they see the hot links for the last 24 hours' do
    hot_read_1 = HotRead.create(url: 'https://turing.io')
    hot_read_2 = HotRead.create(url: 'https://facebook.com')
    hot_read_3 = HotRead.create(url: 'https://google.com')

    visit root_path

    expect(page).to have_content('https://turing.io')
    expect(page).to have_content('https://facebook.com')
    expect(page).to have_content('https://google.com')
  end
end
