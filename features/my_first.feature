Feature: Running a test
  As an iOS developer
  I want to have a sample feature file
  So I can begin testing quickly

Scenario: Example steps 1
  Given I am on the Welcome Screen
  Then I press "New Image Filters"
  Then I scroll up
  Then I scroll down
  Then I press "Back"
  And I wait for 2 seconds
  Then I should scroll down to see "Popover"
  And I wait for 2 seconds
  And I should see "Popover"
  And I wait for 2 seconds
  Then I press "Popover"
  And I wait for 2 seconds
  Then I press "Back"
  And I wait for 2 seconds
  Then I should scroll up to see "Audio Effects"
  And I should see "Audio Effects"
  Then I press "Audio Effects"
  And I wait for 2 seconds
  Then I press "iOS8 Sampler"
  And I wait for 2 seconds
  Then I press "New Image Filters"
  And I wait for 2 seconds
  Then I press "CODE"
  And I wait for 6 seconds
  Then I press "Back"
  Then I swipe left