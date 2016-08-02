class HomePage < SitePrism::Page
	
	element :button_menu,				:xpath, '(//button[@type="button"])[1]'
	element :sub_menu_tour,				:xpath, '//a[@href="https://dentconnect.net#app"]'

end