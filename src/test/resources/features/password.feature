@predefined
Feature: Password Smoke steps

  @predefined1
  Scenario: Insurance password smoke test - Happy Path
    Given I open url "http://154.41.228.85/dashboard/"
    Then I wait for 5 sec
    Then I type "password*!1" into element with xpath "//input[@id='password']"
    Then I wait for 5 sec
    Then I type "password*!1" into element with xpath "//input[@id='retype_password']"
    Then I wait for 5 sec
    Then I click on element with xpath "//input[@id='agreement']"
    Then I wait for 5 sec
    # Then I click on element with xpath "//button[normalize-space()='Submit form']"
    # Submit button is not clickable right now
    Then I wait for 5 sec








