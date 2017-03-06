require_relative '../spec_helper'

feature 'App deployment' do
	context 'server can deploy' do
		scenario 'return the word Hello' do
		visit '/'
		expect(page).to have_content 'Hello'
		end
	end

end


