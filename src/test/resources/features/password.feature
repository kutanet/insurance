# Author Ruslan
@predefinedPasswordTestSuite 
  
Feature: Password Test Suite
  @predefinedPasswordHappyPath
  Scenario: N1 Insurance password smoke test - Happy Path
    Given I open url "http://154.41.228.85/dashboard/"
    Then I wait for 2 sec
    Then I type "Ruslan" into element with xpath "//input[@id='name']"
    Then I choose "USA" from the country list
    Then I type "94022" into element with xpath "//input[@id='zip-code']"
    Then I type "password*!1" into element with xpath "//input[@id='password']"
    Then I type "password*!1" into element with xpath "//input[@id='retype_password']"
    Then I switch to iframe with xpath "//iframe[@title='description']"
    Then I type "Ruslan" into element with xpath "//input[@id='Name']"
    Then I type "+147674587" into element with xpath "//input[@id='Phone']"
    Then I switch to default content
    Then I click on element using JavaScript with xpath "//button[normalize-space()='Submit form']"
    Then I wait for 5 sec
   # The "Submit button was not clickable, so I used  JavaScript"
    Then I capture the alert message and make sure that it contains "Please accept agreement"
  
  @predefinedPasswordSpecialCharacters

  Scenario: N2 Insurance password smoke test - Special Characters
    Given I open url "http://154.41.228.85/dashboard/"
    Then I wait for 2 sec
    Then I type "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaA64" into element with xpath "//input[@id='password']"
    Then I wait for element with xpath "//small[@id='password']" to be present
    Then I type "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaA64" into element with xpath "//input[@id='retype_password']"
    Then I wait for element with xpath "//small[@id='password']" to be present
    Then I switch to iframe with xpath "//iframe[@title='description']"
    Then I type "Ruslan" into element with xpath "//input[@id='Name']"
    Then I type "+147674587" into element with xpath "//input[@id='Phone']"
    Then I switch to default content
    Then I click on element using JavaScript with xpath "//button[normalize-space()='Submit form']"
    Then I wait for 5 sec
   # The "Submit button was not clickable, so I used  JavaScript"
    Then I capture the alert message and make sure that it contains "Please accept agreement"

  @predefinedPasswordBoundaryNegative

  Scenario: N3 Insurance password smoke test - Boundary Negative
    Given I open url "http://154.41.228.85/dashboard/"
    Then I wait for 2 sec
    Then I type "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaA!65" into element with xpath "//input[@id='password']"
    Then I wait for element with xpath "//small[@id='password']" to be present
    # boundary notification should have its own xpath. currently, all have same xpath, not a big deal here, though.
    Then I type "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaA!65" into element with xpath "//input[@id='retype_password']"
    Then I wait for element with xpath "//small[contains(text(),'The retype password must not be greater than 64 ch')]" to be present
    Then I switch to iframe with xpath "//iframe[@title='description']"
    Then I type "Ruslan" into element with xpath "//input[@id='Name']"
    Then I type "+147674587" into element with xpath "//input[@id='Phone']"
    Then I switch to default content
    Then I click on element using JavaScript with xpath "//button[normalize-space()='Submit form']"
    Then I wait for 5 sec
   # The "Submit button was not clickable, so I used  JavaScript"
    Then I capture the alert message and make sure that it contains "Please accept agreement"

  @predefinedPasswordEmptyField

  Scenario: N4 Insurance password smoke test - Empty Field
    Given I open url "http://154.41.228.85/dashboard/"
    Then I wait for 2 sec
    Then I type "" into element with xpath "//input[@id='password']"
    Then I wait for 2 sec
    #this message will never appear if do nothing in the field, need to change focus to make it appear
    Then I mouse over element with xpath "//input[@id='retype_password']"
    Then I type "" into element with xpath "//input[@id='retype_password']"
    Then I switch to iframe with xpath "//iframe[@title='description']"
    Then I type "Ruslan" into element with xpath "//input[@id='Name']"
    Then I type "+147674587" into element with xpath "//input[@id='Phone']"
    Then I switch to default content
    Then I click on element using JavaScript with xpath "//button[normalize-space()='Submit form']"
    Then I wait for 5 sec
   # The "Submit button was not clickable, so I used  JavaScript"
    Then I capture the alert message and make sure that it contains "Please accept agreement"

  @predefinedPasswordRe-EnterPasswordMatch

  Scenario: N5 Insurance password smoke test - Re-enter Password Match
    Given I open url "http://154.41.228.85/dashboard/"
    Then I wait for 2 sec
    Then I type "password*!1" into element with xpath "//input[@id='password']"
    Then I wait for 2 sec
    Then I type "password*!12" into element with xpath "//input[@id='retype_password']"
    Then I switch to iframe with xpath "//iframe[@title='description']"
    Then I type "Ruslan" into element with xpath "//input[@id='Name']"
    Then I type "+147674587" into element with xpath "//input[@id='Phone']"
    Then I switch to default content
    Then I click on element using JavaScript with xpath "//button[normalize-space()='Submit form']"
    Then I wait for 5 sec
   # The "Submit button was not clickable, so I used  JavaScript"
    Then I capture the alert message and make sure that it contains "Please accept agreement"
    Then I accept alert
    Then I click on element with xpath "//input[@id='agreement']"
    Then I wait for 3 sec
    Then I click on element using JavaScript with xpath "//button[normalize-space()='Submit form']"

