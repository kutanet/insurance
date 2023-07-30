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
  @predefinedPasswordBoundaryPositive

  Scenario: N2 Insurance password smoke test - Boundary Positive
    Given I open url "http://154.41.228.85/dashboard/"
    Then I wait for 2 sec
    Then I type "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaA!64" into element with xpath "//input[@id='password']"
    Then I wait for 2 sec
    Then I type "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaA!64" into element with xpath "//input[@id='retype_password']"
    Then I wait for 2 sec
    Then I click on element with xpath "//input[@id='agreement']"
    Then I wait for 2 sec
    # Then I click on element with xpath "//button[normalize-space()='Submit form']"
    # Submit button is not clickable right now
    Then I wait for 2 sec

  @predefinedPasswordBoundaryNegative

  Scenario: N3 Insurance password smoke test - Boundary Negative
    Given I open url "http://154.41.228.85/dashboard/"
    Then I wait for 2 sec
    Then I type "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaA!65" into element with xpath "//input[@id='password']"
    Then I wait for 2 sec
    Then I type "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaA!65" into element with xpath "//input[@id='retype_password']"
    Then I wait for 2 sec
    Then I click on element with xpath "//input[@id='agreement']"
    Then I wait for 2 sec
    # Then I click on element with xpath "//button[normalize-space()='Submit form']"
    # Submit button is not clickable right now
    Then I wait for 2 sec

  @predefinedPasswordEmptyField

  Scenario: N4 Insurance password smoke test - Empty Field
    Given I open url "http://154.41.228.85/dashboard/"
    Then I wait for 2 sec
    Then I type "" into element with xpath "//input[@id='password']"
    Then I wait for 2 sec
    Then I type "" into element with xpath "//input[@id='retype_password']"
    Then I wait for 2 sec
    Then I click on element with xpath "//input[@id='agreement']"
    Then I wait for 2 sec
    # Then I click on element with xpath "//button[normalize-space()='Submit form']"
    # Submit button is not clickable right now
    Then I wait for 2 sec

  @predefinedPasswordRe-EnterPasswordMatch

  Scenario: N5 Insurance password smoke test - Re-enter Password Match
    Given I open url "http://154.41.228.85/dashboard/"
    Then I wait for 2 sec
    Then I type "password*!1" into element with xpath "//input[@id='password']"
    Then I wait for 2 sec
    Then I type "password*!12" into element with xpath "//input[@id='retype_password']"
    Then I wait for 2 sec
    Then I click on element with xpath "//input[@id='agreement']"
    Then I wait for 2 sec
    # Then I click on element with xpath "//button[normalize-space()='Submit form']"
    # Submit button is not clickable right now
    Then I wait for 2 sec