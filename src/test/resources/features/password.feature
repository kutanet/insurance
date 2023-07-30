@predefined
Feature: Password Smoke steps

    # here is the Jira Test Cases : https://inglourioustesters.atlassian.net/browse/IN-15
  @predefinedPasswordHappyPath

  Scenario: N1 Insurance password smoke test - Happy Path
    Given I open url "http://154.41.228.85/dashboard/"
    Then I wait for 2 sec
    Then I type "password*!1" into element with xpath "//input[@id='password']"
    Then I wait for 2 sec
    Then I type "password*!1" into element with xpath "//input[@id='retype_password']"
    Then I wait for 2 sec
    Then I click on element with xpath "//input[@id='agreement']"
    Then I wait for 2 sec
    # Then I click on element with xpath "//button[normalize-space()='Submit form']"
    # Submit button is not clickable right now
    Then I wait for 2 sec