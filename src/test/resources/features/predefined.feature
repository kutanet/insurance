@predefined
Feature: Smoke steps

  @predefined1
  Scenario: Insurance smoke test
  Given I Launch insurance page
  Then I fill out all required fields from "validUser" file
  And I wait for 1 sec
