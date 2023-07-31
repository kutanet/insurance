@insurancePassword
Feature: Smoke
  @insurance1
  Scenario: Insurance password1
    Given I open url "http://154.41.228.85/dashboard/"
    Then I wait for 2 sec
    Then I type "password*!1" into element with xpath "//input[@id='password']"
    Then I wait for 2 sec