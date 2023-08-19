@profileUpdate
Feature: Update

  @dice
  Scenario: Dice update
    Given I open a dice login page
    And I fill out credentials from "myCredentials" file
    And I move to profile page
    And I wait for 1 sec
    And I click edit button



