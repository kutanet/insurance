@insuranceProductSelectionField
Feature: Smoke
  @insurance1
  Scenario: Product Selection Positive path
    Given I open url "http://154.41.228.85/dashboard/"
    Then I choose "HOME" from the products list
    Then I wait for 1 sec
    Then I choose "AUTO" from the products list
    Then I switch to iframe with xpath "//iframe[@src='http://154.41.228.85/iframe']"
    Then I switch to default content
    Then I wait for 5 sec


