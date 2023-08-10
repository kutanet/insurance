@insurance
Feature: Suite/Apt feature

  @insurance
  Scenario: Suite/Apt - Happy path (accept numbers, letters and "-", maximum 6 characters)
    Given I open url "http://154.41.228.85/"
    Then I type "123-A" into element with xpath "//input[@id='suit-apt']"
    And I wait for 4 sec
    Then I click on element with xpath "//input[@id='agreement']"
    Then I click on element with xpath "//button[contains(text(), 'Submit form')]"
    And I accept alert
    Then I verify that the error message with xpath "//div[6]//div[1]//small[1]" is not displayed
    And I wait for 4 sec


  @insurance
  Scenario: Suite/Apt - Positive (accept numbers)
    Given I open url "http://154.41.228.85/"
    Then I type "123456" into element with xpath "//input[@id='suit-apt']"
    And I wait for 4 sec
    Then I click on element with xpath "//input[@id='agreement']"
    Then I click on element with xpath "//button[contains(text(), 'Submit form')]"
    And I accept alert
    Then I verify that the error message with xpath "//div[6]//div[1]//small[1]" is not displayed
    And I wait for 4 sec


  @insurance
  Scenario: Suite/Apt - Positive (accept letters)
    Given I open url "http://154.41.228.85/"
    Then I type "ABCd" into element with xpath "//input[@id='suit-apt']"
    And I wait for 4 sec
    Then I click on element with xpath "//input[@id='agreement']"
    Then I click on element with xpath "//button[contains(text(), 'Submit form')]"
    And I accept alert
    Then I verify that the error message with xpath "//div[6]//div[1]//small[1]" is not displayed
    And I wait for 4 sec


  @insurance
  Scenario: Suite/Apt - 7 characters (more than 6 max)
    Given I open url "http://154.41.228.85/"
    Then I type "123456A" into element with xpath "//input[@id='suit-apt']"
    And I wait for 3 sec
    Then I click on element with xpath "//input[@id='agreement']"
    Then I click on element with xpath "//button[contains(text(), 'Submit form')]"
    And I accept alert
    Then I verify that the error message with xpath "//div[6]//div[1]//small[1]" is displayed
    And I wait for 4 sec

  @insurance
  Scenario: Suite/Apt - accepts special character "-"
    Given I open url "http://154.41.228.85/"
    Then I type "12-B" into element with xpath "//input[@id='suit-apt']"
    And I wait for 3 sec
    Then I click on element with xpath "//input[@id='agreement']"
    Then I click on element with xpath "//button[contains(text(), 'Submit form')]"
    And I accept alert
    Then I verify that the error message with xpath "//div[6]//div[1]//small[1]" is not displayed
    And I wait for 4 sec

  @insurance
  Scenario: Suite/Apt - does not accepts another special characters than "-"
    Given I open url "http://154.41.228.85/"
    Then I type "#788@" into element with xpath "//input[@id='suit-apt']"
    And I wait for 3 sec
    Then I click on element with xpath "//input[@id='agreement']"
    Then I click on element with xpath "//button[contains(text(), 'Submit form')]"
    And I accept alert
    Then I verify that the error message with xpath "//div[6]//div[1]//small[1]" is displayed
    And I wait for 4 sec

  @insurance
  Scenario: Suite/Apt - Optional field
    Given I open url "http://154.41.228.85/"
    Then I type "" into element with xpath "//input[@id='suit-apt']"
    And I wait for 3 sec
    Then I click on element with xpath "//input[@id='agreement']"
    Then I click on element with xpath "//button[contains(text(), 'Submit form')]"
    Then I verify that the error message with xpath "//div[6]//div[1]//small[1]" is not displayed
    And I wait for 4 sec

    @insurance
    Scenario Outline: Suite/Apt feature outline
      Given I open url "http://154.41.228.85/"
      Then I type "<street>" into element with xpath "//input[@id='street']"
      Then I type "<suite-apt>" into element with xpath "//input[@id='suit-apt']"
      Then I type "<city>" into element with xpath "//input[@id='city']"
      Then I type "<state>" into element with xpath "//input[@id='state']"
      And I wait for 4 sec
      Then I click on element with xpath "//input[@id='agreement']"
      Then I click on element with xpath "//button[contains(text(), 'Submit form')]"
      And I accept alert
      Then I verify that the error message with xpath "//div[6]//div[1]//small[1]" is not displayed
      And I wait for 4 sec

      @insurance @insurance
      Examples:
      | street           | suite-apt | city          | state         |
      | Baker Street     | 221-B     | London        | N/A           |
      | Conch Street     | 124       | Bikini Bottom | Pacific Ocean |
      | Ocean Drive      | 123456      | Miami       | Florida     |


