@insurance
Feature: Username

  @insurance
  Scenario: allowed 16 letters
    Given I open url "http://154.41.228.85/"
    Then I type "QWERTYUIOPasdfgh" into element with xpath "//input[@id='username']"
    And I wait for 3 sec
    Then I click on element with xpath "//input[@id='password']"
    And I wait for 1 sec
    Then I click on element using JavaScript with xpath "//button[normalize-space()='Submit form']"
    And I wait for 1 sec
    And I verify that the error message with xpath "//small[normalize-space()='The username must not be greater than 16 characters.']" is not displayed

  @insurance
  Scenario: Not allowed 17 letters
    Given I open url "http://154.41.228.85/"
    Then I type "QWERTYUIOPasdfghj" into element with xpath "//input[@id='username']"
    And I wait for 3 sec
    Then I click on element with xpath "//input[@id='password']"
    And I wait for 1 sec
    And I wait for element with xpath "//small[normalize-space()='The username must not be greater than 16 characters.']" to be present
    And I verify that the error message with xpath "//small[normalize-space()='The username must not be greater than 16 characters.']" is displayed

  @insurance
  Scenario: Not allowed numbers
    Given I open url "http://154.41.228.85/"
    Then I type "Th0mas" into element with xpath "//input[@id='username']"
    And I wait for 3 sec
    Then I click on element with xpath "//input[@id='password']"
    And I wait for 1 sec
    And I wait for element with xpath "//small[normalize-space()='The username format is invalid.']" to be present
    And I verify that the error message with xpath "//small[normalize-space()='The username format is invalid.']" is displayed

  @insurance
  Scenario: Not allowed special characters
    Given I open url "http://154.41.228.85/"
    Then I type "Thom@s" into element with xpath "//input[@id='username']"
    And I wait for 3 sec
    Then I click on element with xpath "//input[@id='password']"
    And I wait for 1 sec
    And I wait for element with xpath "//small[normalize-space()='The username format is invalid.']" to be present
    And I verify that the error message with xpath "//small[normalize-space()='The username format is invalid.']" is displayed

  @insurance
  Scenario: Mandatory field
    Given I open url "http://154.41.228.85/"
    Then I click on element with xpath "<input type='checkbox' name='agreement' value='agreement' id='agreement' class='form-check-input'>"
    And I wait for 1 sec
    Then I click on element using JavaScript with xpath "//button[normalize-space()='Submit form']"
    And I accept alert
    And I wait for element with xpath "//small[normalize-space()='The username field is required.']" to be present
    And I verify that the error message with xpath "//small[normalize-space()='The username field is required.']" is displayed
