@predefined
Feature: Smoke steps

  @insurance1
  Scenario: Insurance smoke test
    Given I open url "http://154.41.228.85"

    Then I type "Sherlock Holmes" into element with xpath "//input[@id='name']"

    Then I choose "USA" from the country list

    Then I type "91201" into element with xpath "//input[@id='zip-code']"

    Then I type "BakerStreet" into element with xpath "//input[@id='street']"

    Then I type "hundrd" into element with xpath "//input[@id='suit-apt']"

    Then I type "London" into element with xpath "//input[@id='city']"

    Then I type "California" into element with xpath "//input[@id='state']"

    Then I type "N/A" into element with xpath "//textarea[@id='additional']"

    Then I type "user" into element with xpath "//input[@id='username']"

    Then I type "password!" into element with xpath "//input[@id='password']"
    Then I wait for 1 sec
    Then I type "password!" into element with xpath "//input[@id='retype_password']"
    Then I wait for 1 sec
    Then I type "sherlock@holmes.com" into element with xpath "//input[@id='email']"
    Then I wait for 1 sec
    Then I type "+44 2012 321234" into element with xpath "//input[@id='phone_number']"
#    Then I wait for 1 sec
    Then I type "01/06/1854" into element with xpath "//input[@name='date']"
#    Then I wait for 1 sec
    Then I click on element with xpath "//input[@id='male']"
#    Then I wait for 1 sec
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





























  