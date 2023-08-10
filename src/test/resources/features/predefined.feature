@predefined
Feature: Smoke steps

  @predefined1
  Scenario: Insurance smoke test
    Given I Launch insurance page
    Then I fill out all the fields with valid data
    And I wait for 5 sec
    And I verify that the review page is opened



  @predefined2
  Scenario Outline: Insurance smoke test outline
    Given I open url "http://154.41.228.85"
    Then I type "<name>" into element with xpath "//input[@id='name']"
    Then I choose "<country>" from the country list
    Then I type "<Zip>" into element with xpath "//input[@id='zip-code']"
    Then I type "Bakerstreet" into element with xpath "//input[@id='street']"
    Then I type "hundrd" into element with xpath "//input[@id='suit-apt']"
    Then I type "London" into element with xpath "//input[@id='city']"
    Then I type "<State>" into element with xpath "//input[@id='state']"
    Then I type "N/A" into element with xpath "//textarea[@id='additional']"
    Then I type "user" into element with xpath "//input[@id='username']"
    Then I type "password!" into element with xpath "//input[@id='password']"
    Then I type "password!" into element with xpath "//input[@id='retype_password']"
    Then I type "sherlock@holmes.com" into element with xpath "//input[@id='email']"
    Then I type "<Phone>" into element with xpath "//input[@id='phone_number']"
    Then I type "01/06/1854" into element with xpath "//input[@name='date']"
    Then I click on element with xpath "//input[@id='male']"
    Then I click on element with xpath "//input[@id='agreement']"
    Then I choose "HOME" from the products list
    Then I choose "AUTO" from the products list
    Then I switch to iframe with xpath "//iframe[@src='http://154.41.228.85/iframe']"
    Then I type "Dr Watson" into element with xpath "//input[@id='Name']"
    Then I switch to default content
    Then I click on element with xpath "//button[normalize-space()='Submit form']"
    Then I wait for 2 sec
    Examples:
      |name  |country|Zip|Phone|State|
      |Jose  |Mexico |12312|+2212313123|Sonora|
      |Justin  |Canada |32112|+3741231919|Ontario|
      |Donald  |USA    |32123|+14325643  |California|

































  