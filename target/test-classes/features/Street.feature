@predifined
Feature:Smoke steps

  @insurance1
  Scenario:Insurance Street1
    Given I open url "http://154.41.228.85/"
    Then I type "12345 Saratoga- Cupertino avenue" into element with xpath "//input[@id='street']"
    Then I wait for 1 sec
    Then I click on element with xpath "//input[@id='state']"
    Then I wait for 5 sec


  @Insurance1
  Scenario: Insurance Street2
    Given I open url "http://154.41.228.85/"
    Then I type "123456789123 Main Saratoga-Cupertino 1234567 Street" into element with xpath "//input[@id='street']"
    Then I wait for 1 sec
    Then I click on element with xpath "//input[@id='zip-code']"
    Then I wait for element with xpath "//div[@class='card application']//div[5]//div[1]//small[1]'" to be present
    And  I verify that the error message with xpath "//div[@class='card application']//div[5]//div[1]//small[1]'" is displayed
    Then I wait for 5 sec

  @Insurance2
  Scenario: Insurance Street3
    Given I open url "http://154.41.228.85/"
    Then I type "11111111111 Main Saratoga-Cupertino 1234567 Street" into element with xpath "//input[@id='street']"
    Then I wait for 1 sec
    Then I click on element with xpath "//input[@id='zip-code']"
    Then I wait for 5 sec

  @Insurance2
  Scenario: Insurance Street4
    Given I open url "http://154.41.228.85/"
    Then I type "Saratoga-Cupertino" into element with xpath "//input[@id='street']"
    Then I wait for 1 sec
    Then I click on element with xpath "//input[@id='zip-code']"
    Then I wait for 5 se

  @Insurance2
  Scenario: Insurance Street5
    Given I open url "http://154.41.228.85/"
    Then I type "12A" into element with xpath "//input[@id='street']"
    Then I wait for 2 sec
    Then I click on element with xpath "//input[@id='zip-code']"
    Then I wait for 5 sec