@predefined
Feature: Smoke steps

  @predefined1
  Scenario: Insurance smoke test
    Given I open url "http://154.41.228.85"
    Then I wait for 1 sec
    Then I type "Sherlock Holmes" into element with xpath "//input[@id='exampleInputEmail1']"
    Then I wait for 1 sec
    Then I choose "USA" from the country list
    Then I wait for 1 sec
