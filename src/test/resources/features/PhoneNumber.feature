@insurance
Feature: PhoneNumberField
  @insurance1
  Scenario: Happy path
    Given I Launch insurance page
    And I wait for 1 sec
    Then I type "+1-628-1234123" into element with xpath "//input[@id='phone_number']"
    And I click on element with xpath "//input[@name='date']"
    And I verify that the error message with xpath "//small[normalize-space()='The phone number format is invalid.']" is not displayed


  @insurance2
  Scenario: Negative
    Given I Launch insurance page
    And I wait for 2 sec
    Then I type "1231234567" into element with xpath "//input[@id='phone_number']"
    And I wait for 3 sec
    And I verify that the error message with xpath "//input[@id='phone_number']/..//*[contains(text(),'The phone number format is invalid.')]" is displayed
