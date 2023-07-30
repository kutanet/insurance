@insuranceZip
Feature: Smoke
@insurance1
Scenario: Insurance zip1
Given I Launch insurance page
  And I wait for 1 sec
  When I click on element with xpath "//input[@id='Female']"
  And I wait for 1 sec