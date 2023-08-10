@predefined_Password_Test_Outlines # Author Ruslan
Feature: Password Outline
  Scenario:  Insurance password smoke test - Password Field Testing
    Given I open url "http://154.41.228.85/dashboard/"
    Then I wait for 2 sec
    Then I fill out the password field with various outlines
    Then I click on element with xpath "//input[@id='agreement']"
    Then I click on element with xpath "//button[normalize-space()='Submit form']"
    Then I wait for 5 sec
    # And I verify that the review page is open
  # in order to verify I need to fill all other fields under separate fillAllFields method and test password field
  # for now just assert alert message
    Then I capture the alert message and make sure that it contains "Form contains errors"
