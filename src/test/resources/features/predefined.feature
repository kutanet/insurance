@predefined
Feature: Smoke steps

  @insurance1
  Scenario: Insurance smoke test
    Given I open url "http://154.41.228.85"

    Then I type "Sherlock Holmes" into element with xpath "//input[@id='name']"

    Then I choose "USA" from the country list

    Then I type "91201" into element with xpath "//input[@id='zip-code']"

    Then I type "221b Baker street" into element with xpath "//input[@id='street']"
    Then I type "100" into element with xpath "//input[@id='suit-apt']"
    Then I type "London" into element with xpath "//input[@id='city']"
    Then I type "California" into element with xpath "//input[@id='state']"
    Then I type "N/A" into element with xpath "//textarea[@id='additional']"
    Then I type "user" into element with xpath "//input[@id='username']"
    Then I type "password" into element with xpath "//input[@id='password']"
    Then I type "password" into element with xpath "//input[@id='retype_password']"
    Then I type "sherlock@holmes.com" into element with xpath "//input[@id='email']"
    Then I type "+44 2012 321234" into element with xpath "//input[@id='phone_number']"
    Then I type "01/06/1854" into element with xpath "//input[@id='date_of_birth']"
    Then I click on element with xpath "//input[@id='male']"
    Then I click on element with xpath "//input[@id='agreement']"
    Then I wait for 1 sec
    Then I choose "HOME" from the products list
    Then I wait for 1 sec
    Then I choose "AUTO" from the products list
    Then I switch to iframe with xpath "//iframe[@src='http://154.41.228.85/iframe']"
    Then I type "Dr Watson" into element with xpath "//input[@id='Name']"
    Then I switch to default content
    Then I click on element with xpath "//button[normalize-space()='Submit form']"
    Then I wait for 5 sec

  @insurance1
  Scenario: Insurance zip1
    Given I Launch insurance page
    And I type "1234" into element with xpath "//input[@id='zip-code']"
    Then I click on element with xpath "//button[normalize-space()='Submit form']"
    And I wait for element with xpath "//input[@id='zip-code']/../small" to be present
    And I verify that the error message with xpath "//input[@id='zip-code']/../small" is displayed
    And I wait for 2 sec

  @insurance1
  Scenario: Insurance zip2
    Given I Launch insurance page
    And I type "1234567" into element with xpath "//input[@id='zip-code']"
    Then I click on element with xpath "//button[normalize-space()='Submit form']"
    And I wait for 1 sec
    And I verify that the error message with xpath "//input[@id='zip-code']/../small" is displayed
    And I


























  