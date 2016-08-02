require "spec_helper"
require "pages/home_page"

describe 'Open dentconnect.net' do

	it 'Open dentconnect and click on few buttons' do

		@page = HomePage.new		
		visit 'https://dentconnect.net/'
		@page.button_menu.click
		@page.sub_menu_tour.click
		expect(page).to have_content('Patients database')
		sleep 5

	end

	it 'Scroll to element' do

		@page = HomePage.new		
		visit 'https://dentconnect.net/'
		@page.button_menu.click
		@page.sub_menu_tour.click
		sleep 5
		page.execute_script "window.scrollBy(0,500)"
		expect(page).to have_content'One universal calendar'
		expect(page).to have_content'to schedule your patients'
		sleep 5
		
	end

end
