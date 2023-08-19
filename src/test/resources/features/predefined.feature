@predefined
Feature: Smoke steps

  @predefined1
  Scenario: Insurance smoke test
  Given I Launch insurance page
  Then I fill out all required fields from "validUser" file
    Then I verify that email format error message is not displayed
  And I wait for 4 sec

  @predefined2
  Scenario: Insurance smoke test2
    Given I Launch insurance page
    Then I fill out all required fields from "User1" file
    Then I verify that email format error message is displayed
    And I wait for 1 sec


