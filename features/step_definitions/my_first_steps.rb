#class NativeComponent
#  # Ensures that the page is present by checking if its title is displayed
#  def trait
#    get_toolbar_title('Native Components')
#  end

Given /^I am on the Welcome Screen$/ do
  element_exists("view")
  sleep(STEP_PAUSE)

end

Given(/^I see \#Audio Effects \#New Image Filters \#CustomFilters #Metal Basic \#Metal Uniform Stream \#SceneKit \#HealthKit \#Touch ID \#VisualEffects$/) do
	element_exists("view")
	sleep(STEP_PAUSE)

end

#Step definition down to see object
Then(/^I should scroll down to see "([^"]*)"$/) do |arg|
wait_poll(:until_exists => "label text:'Popover'", :timeout => 4) do
scroll("tableView", :down)
end
#@current_page.scroll(arg)
#def scroll(content)
#	    scroll("scrollView", :down)
#	  end
  
#end

end

#Step definition up to see object
Then(/^I should scroll up to see "([^"]*)"$/) do |arg|
wait_poll(:until_exists => "label text:'Audio Effects'", :timeout => 4) do
scroll("tableView", :up)
end
#@current_page.scroll(arg)
#def scroll(content)
#	    scroll("scrollView", :down)
#	  end
  
#end

end