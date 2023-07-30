@predefined
Feature: Password Smoke steps

    # here is the Jira Test Cases : https://inglourioustesters.atlassian.net/browse/IN-15
  @predefinedPasswordHappyPath

  Scenario: N1 Insurance password smoke test - Happy Path
    Given I open url "http://154.41.228.85/dashboard/"
    Then I wait for 2 sec
    Then I type "password*!1" into element with xpath "//input[@id='password']"
    Then I wait for 2 sec
    # xpath is not changing in any case, not for same, not for empty, not for special characters.  All have same xpath
    Then I type "password*!1" into element with xpath "//input[@id='retype_password']"
    Then I wait for 2 sec
    Then I click on element with xpath "//input[@id='agreement']"
    Then I wait for 2 sec
    # Then I click on element with xpath "//button[normalize-space()='Submit form']"
    # Submit button is not clickable right now
    Then I wait for 2 sec
  @predefinedPasswordSpecialCharacters

  Scenario: N2 Insurance password smoke test - Special Characters
    Given I open url "http://154.41.228.85/dashboard/"
    Then I wait for 2 sec
    Then I type "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaA64" into element with xpath "//input[@id='password']"
    Then I wait for element with xpath "//small[@id='password']" to be present
    Then I type "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaA64" into element with xpath "//input[@id='retype_password']"
    Then I wait for element with xpath "//small[@id='password']" to be present
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
    Then I wait for element with xpath "//small[@id='password']" to be present
    # boundary notification should have its own xpath. currently, all have same xpath, not a big deal here, though. 
    Then I type "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaA!65" into element with xpath "//input[@id='retype_password']"
    Then I wait for element with xpath "//small[contains(text(),'The retype password must not be greater than 64 ch')]" to be present
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
    #this message will never appear if do nothing in the field, need to change focus to make it appear
    Then I mouse over element with xpath "//input[@id='retype_password']"
    Then I type "" into element with xpath "//input[@id='retype_password']"
    Then I wait for 2 sec
    Then I click on element with xpath "//input[@id='agreement']"
    Then I wait for 2 sec
    #Then I verify that the error message with xpath "//small[@id='password']" is displayed
    #can not find the xpath
    # Then I verify that the error message with xpath "//small[normalize-space()='The retype password field is required.']" is displayed
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