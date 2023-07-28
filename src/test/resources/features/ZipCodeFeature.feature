@insuranceZip
Feature: Smoke
@insurance1
Scenario: Insurance zip1
Given I Launch insurance page
And I type "1234" into element with xpath "//input[@id='zip-code']"
Then I click on element with xpath "//button[normalize-space()='Submit form']"
And I wait for element with xpath "//input[@id='zip-code']/../small" to be present
And I verify that the error message with xpath "//input[@id='zip-code']/../small" is displayed
And I wait for 2 sec

@insurance1
Scenario: Insurance zip2
Given I Launch insurance page
And I type "1234567" into element with xpath "//input[@id='zip-code']"
Then I click on element with xpath "//button[normalize-space()='Submit form']"
And I wait for 1 sec
And I verify that the error message with xpath "//input[@id='zip-code']/../small" is displayed