@predefined
Feature: Smoke steps

  @predefined1
  Scenario: Insurance smoke test
    Given I open url "http://154.41.228.85"
    Then I wait for 1 sec
    Then I type "Sherlock Holmes" into element with xpath "//input[@id='exampleInputEmail1']"
    Then I wait for 5 sec
    Then I choose "Canada" from the country list
    Then I maximize window
    Then I wait for 1 sec
