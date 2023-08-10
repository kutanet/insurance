@insuranceState
Feature: Smoke steps
  @insurance
  Scenario: Insurance Smoke State Negative
    Given I Launch insurance page
    And I type "California1" into element with xpath "//input[@id='state']"
    And I wait for 1 sec
#    And I wait for element with xpath "//input[@id='state']" to be present
    And I wait for 2 sec
    Then I verify that the error message with xpath "//input[@id='state']/..//*[contains(text(),'latin')]" is displayed

  Scenario: Insurance Smoke State Positive
    Given I open url "http://154.41.228.85/dashboard"
    And I type "<State>" into element with xpath "//input[@id='state']"
    And I wait for 1 sec
#    And I verify that the error message with xpath //small[contains(text(),'The state field is required.')] is not displayed
    Then I verify that the error message with xpath "//small[contains(text(),'The state field is required.')]" is not displayed
    Examples:
    | State           |
    | California      |
    | Texas          |
    | Oregon         |
    | Alaska         |
    | Colorado       |
    | Maryland       |
    | Florida        |
    | Arizona        |

  Scenario: Insurance Smoke State Negative_3Characters
    Given I open url "http://154.41.228.85/dashboard"
    And I wait for element with xpath "//input[@id='state']" to be present
    And I type "Yow" into element with xpath "//input[@id='state']"
    And I wait for 2 sec
    Then I verify that the error message with xpath "//small[contains(text(),'The state must be at least 4 characters.')]" is displayed
    And I wait for 5 sec

  Scenario: Insurance Smoke State Negative_33Characters
    Given I open url "http://154.41.228.85/dashboard"
    And I type "Californiacaliforniaarizonatexasc" into element with xpath "//input[@id='state']"
    And I wait for 2 sec
    Then I verify that the error message with xpath "//small[contains(text(),'The state must not be greater than 32 characters.')]" is displayed
    And I wait for 2 sec


  Scenario: Insurance Smoke State Negative
    Given I Launch insurance page
    Then I fill out state field with invalid data
    And I wait for 5 sec