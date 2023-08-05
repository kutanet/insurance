@Insurance
Feature:Smoke steps

  @insurance1
Scenario:Insurance Street1(happy path)
Given I Launch insurance page
Then I type "12345 Saratoga- Cupertino avenue" into element with xpath "//input[@id='street']"
Then I click on element with xpath "//input[@id='state']"
And I verify that the error message with xpath "//input[@id='street']/../small" is not displayed
And I wait for 1 sec

  @Insurance1
  Scenario: Insurance Street2(51characters)
    Given I Launch insurance page
    Then I type "ssttrreettssttrreettssttrreettssttrreettssttrreettt'" into element with xpath "//input[@id='street']"
    Then I wait for 1 sec
    Then I click on element with xpath "//input[@id='zip-code']"
    Then I verify that the error message with xpath {string} is displayed

  @Insurance2
  Scenario: Insurance Street3(50 characters)
    Given I Launch insurance page
    Then I type "11111111111 Main Saratoga-Cupertino 1234567 Street'" into element with xpath "//input[@id='street']"
    Then I wait for 1 sec
    Then I click on element with xpath "//input[@id='zip-code']"
    Then I wait for 5 sec
    Then I verify that the error message with xpath {string} is not displayed

  @Insurance2
  Scenario: Insurance Street4(special character "@" Negative)
    Given I Launch insurance page
    Then I type "Saratoga@Cupertino" into element with xpath "//input[@id='street']"
    Then I wait for 1 sec
    Then I click on element with xpath "//input[@id='zip-code']"
    And I wait for 1 sec
    Then I verify that the error message with xpath "//input[@id='street']/../small" is displayed
    And I wait for 1 sec

  @Insurance2
  Scenario: Insurance Street 3 characters
    Given I Launch insurance page
    Then I type "12A" into element with xpath "//input[@id='street']"
    Then I wait for 2 sec
    Then I click on element with xpath "//input[@id='zip-code']"
    Then I wait for 5 sec
    And I verify that the error message with xpath "//input[@id='street']/../small" is displayed



