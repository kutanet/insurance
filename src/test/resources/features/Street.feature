@predifined
Feature:Smoke steps

  @insurance1
  Scenario:Insurance Street1
    Given I open url "http://154.41.228.85/"
    Then I type "12345 Saratoga- Cupertino avenue" into element with xpath "//input[@id='street']"
    Then I wait for 1 sec
    Then I click on element with xpath "//input[@id='state']"
    Then I wait for 5 sec


