Given /^I am on the Welcome Screen$/ do
  element_exists("view")
  sleep(STEP_PAUSE)

end

Given(/^I see \#Audio Effects \#New Image Filters \#CustomFilters #Metal Basic \#Metal Uniform Stream \#SceneKit \#HealthKit \#Touch ID \#VisualEffects$/) do
	element_exists("view")
	sleep(STEP_PAUSE)

end
