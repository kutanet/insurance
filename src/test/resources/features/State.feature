@insuranceState
Feature: Smoke steps
  @insurance
  Scenario: Insurance Smoke State Negative
    Given I open url "http://154.41.228.85/dashboard"
    And I type "California1" into element with xpath "//input[@id='state']"
    And I wait for 1 sec
    And I wait for element with xpath "//input[@id='state']" to be present
    And I wait for 2 sec
    Then I verify that the error message with xpath "//body/div[@id='__nuxt']/div[@id='__layout']/div[1]/form[1]/div[1]/div[1]/div[1]/div[2]/div[8]/div[1]/small[1]" is displayed

  Scenario: Insurance Smoke State Positive
    Given I open url "http://154.41.228.85/dashboard"
    And I type "California" into element with xpath "//input[@id='state']"
    And I wait for 1 sec
    And I wait for element with xpath "//input[@id='state']" to be present

  Scenario: Insurance Smoke State Negative_3Characters
    Given I open url "http://154.41.228.85/dashboard"
    And I type "Yow" into element with xpath "//input[@id='state']"
    And I wait for 1 sec
    And I wait for element with xpath "//input[@id='state']" to be present
    And I wait for 2 sec
    Then I verify that the error message with xpath "//small[contains(text(),'The state must be at least 4 characters.')]" is displayed
    And I wait for 5 sec

  Scenario: Insurance Smoke State Negative_33Characters
    Given I open url "http://154.41.228.85/dashboard"
    And I type "Californiacaliforniaarizonatexasc" into element with xpath "//input[@id='state']"
    And I wait for 1 sec
    And I wait for element with xpath "//input[@id='state']" to be present
    And I wait for 2 sec
    Then I verify that the error message with xpath "//small[contains(text(),'The state must not be greater then 32 characters.')]" is displayed
    And I wait for 5 sec