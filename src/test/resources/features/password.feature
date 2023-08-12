@predefined_Password_Test_Outlines # Author Ruslan
Feature: Password Outline
  Scenario:  Insurance password smoke test - Password Field Testing
    Given I open url "http://154.41.228.85/dashboard/"
    Then I fill out the password field with various outlines
    Then I wait for 1 sec
    Then I fill out the rest of the required fields except password&retype_password
    #this line is added new
    Then I click on element with xpath "//input[@id='agreement']"
    Then I click on element with xpath "//button[normalize-space()='Submit form']"
    Then I wait for 1 sec
    Then I capture the alert message and make sure that it contains "Form contains errors"
    Then I accept alert
    Then I submit form
    Then I verify that the review page is opened

