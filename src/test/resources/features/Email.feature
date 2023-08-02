@insurance
Feature: Email field

 @insurance
 Scenario: Negative
   Given I Launch insurance page
   And I type "example.mail.com" into element with xpath "//input[@id='email']"
   And I click on element with xpath "//input[@id='phone_number']"
   And I wait for element with xpath "//small[normalize-space()='The email format is invalid.']" to be present
   And I verify that the error message with xpath "//small[normalize-space()='The email format is invalid.']" is displayed

 @insurance
 Scenario: Mandatory
   Given I Launch insurance page
   Then I scroll down to "//button[normalize-space()='Submit form']"
   Then I click on element using JavaScript with xpath "//button[normalize-space()='Submit form']"
   And I accept alert
   And I wait for element with xpath "//small[normalize-space()='The email field is required.']" to be present
   And I verify that the error message with xpath "//small[normalize-space()='The email field is required.']" is displayed

 @insurance
 Scenario: Positive
   Given I Launch insurance page
   And I type "example@mail.com" into element with xpath "//input[@id='email']"
   And I click on element with xpath "//input[@id='phone_number']"
   And I wait for 5 sec
   And I verify that the error message with xpath "//small[normalize-space()='The email format is invalid.']" is not displayed

 @insurance
 Scenario: Local-part length (64, positive)
   Given I Launch insurance page
   And I type "exampleexampleexampleexampleexampleexampleexampleexampleexample1@mail.com" into element with xpath "//input[@id='email']"
   And I click on element with xpath "//input[@id='phone_number']"
   And I wait for 5 sec
   And I verify that the error message with xpath "//small[normalize-space()='The email format is invalid.']" is not displayed

  @insurance
  Scenario: Local-part length (65, negative)
    Given I Launch insurance page
    And I type "exampleexampleexampleexampleexampleexampleexampleexampleexample12@mail.com" into element with xpath "//input[@id='email']"
    And I click on element with xpath "//input[@id='phone_number']"
    And I wait for element with xpath "//small[normalize-space()='The email format is invalid.']" to be present
    And I verify that the error message with xpath "//small[normalize-space()='The email format is invalid.']" is displayed

  @insurance
  Scenario: Domain length (255, positive)
    Given I Launch insurance page
    And I type "example@mailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmai.com" into element with xpath "//input[@id='email']"
    And I click on element with xpath "//input[@id='phone_number']"
    And I wait for 5 sec
    And I verify that the error message with xpath "//small[normalize-space()='The email format is invalid.']" is not displayed

  @insurance
  Scenario: Domain length (256, negative)
    Given I Launch insurance page
    And I type "example@mailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmailmail.com" into element with xpath "//input[@id='email']"
    And I click on element with xpath "//input[@id='phone_number']"
    And I wait for element with xpath "//small[normalize-space()='The email format is invalid.']" to be present
    And I verify that the error message with xpath "//small[normalize-space()='The email format is invalid.']" is displayed
