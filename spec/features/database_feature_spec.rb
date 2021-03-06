require_relative '../spec_helper'

feature 'App deployment' do
  context 'server can deploy' do
    scenario 'return the word Hello' do
      visit '/'
      expect(page).to have_content 'Hello'
    end
  end

  context 'server can post' do
    scenario 'server to save session value' do
      visit('/set?a=1')
      visit('/get?key=a')
      expect(page).to have_content('1')
    end
  end

  context 'server can post' do
    scenario 'server to save session value = 1' do
      visit('/set?a=1')
      visit('/set?b=2')
      visit('/get?key=a')
      expect(page).to have_content('1')
    end

    scenario 'server to save session value = 2' do
      visit('/set?a=1')
      visit('/set?b=2')
      visit('/get?key=b')
      expect(page).to have_content('2')
    end
  end
end
