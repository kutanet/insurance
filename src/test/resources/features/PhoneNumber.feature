@insurance
Feature: Smoke
  @insurance1
  Scenario: Phone number feature
    Given I Launch insurance page
    And I wait for 1 sec
    When I click on element with xpath "//input[@id='phone_number']"
    Then I type "123-1234123" into element with xpath "//input[@id='phone_number']"
    And I wait for 1 sec