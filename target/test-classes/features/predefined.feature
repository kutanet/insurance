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
    Then I type "91201" into element with xpath "//input[@id='zip-code']"
    Then I wait for 1 sec
    Then I type "221b Baker street" into element with xpath "//input[@id='street']"
    Then I wait for 1 sec
    Then I type "100" into element with xpath "//input[@id='suit-apt']"
    Then I wait for 1 sec
    Then I type "London" into element with xpath "//input[@id='city']"
    Then I wait for 1 sec
    Then I type "California" into element with xpath "//input[@id='state']"
    Then I wait for 1 sec
    Then I type "N/A" into element with xpath "//textarea[@id='add-info']"
    Then I wait for 1 sec
    Then I type "user" into element with xpath "//input[@id='user']"
    Then I wait for 1 sec
    Then I type "password" into element with xpath "//input[@id='password']"
    Then I wait for 1 sec
    Then I type "password" into element with xpath "//input[@id='reenter-password']"
    Then I wait for 1 sec
    Then I type "sherlock@holmes.com" into element with xpath "//input[@id='email']"
    Then I wait for 1 sec
    Then I type "+44 2012 321234" into element with xpath "//input[@id='phone_number']"
    Then I wait for 1 sec
    Then I type "01/06/1854" into element with xpath "//input[@name='date_of_birth']"
    Then I wait for 1 sec
    Then I click on element with xpath "//input[@id='male']"
    Then I wait for 1 sec
    Then I click on element with xpath "//input[@id='agreement']"
    Then I wait for 1 sec
    Then I choose "HOME" from the products list
    Then I wait for 1 sec
    Then I choose "AUTO" from the products list
    Then I switch to iframe with xpath "//iframe[@src='http://154.41.228.85/iframe']"
    Then I type "Dr Watson" into element with xpath "//input[@id='Name']"
    Then I click on element with xpath "//button[1]"
    Then I switch to default content














    Then I wait for 5 sec
















  